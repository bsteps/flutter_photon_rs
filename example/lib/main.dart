import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_manipulation/image_manipulation.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Uint8List? originalImage;
  Uint8List? processedImage;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ListView(
          children: [
            if (originalImage != null) const Text('Original Image'),
            if (originalImage != null)
              Image.memory(
                originalImage!,
                height: 300,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: MaterialButton(
                color: Colors.green,
                elevation: 0,
                focusElevation: 0,
                hoverElevation: 0,
                disabledElevation: 0,
                highlightElevation: 0,
                padding: EdgeInsets.zero,
                minWidth: 10,
                shape: const RoundedRectangleBorder(),
                child: const Text('Greyscale Image'),
                onPressed: () async {
                  if (originalImage == null) return;
                  final stopwatch = Stopwatch()..start();

                  final compressedImageBytes = await ImageManipulation.manipulate(
                    bytes: originalImage!,
                    greyscale: true,
                    outputFormat: OutputFormat.Jpeg,
                    threshold: false,
                    thresholdAmount: 140,
                  );

                  log('greyscaleImage() executed in ${stopwatch.elapsed}');
                  stopwatch.stop();

                  processedImage = compressedImageBytes;
                  setState(() {});

                  log(processedImage!.length.toString());
                },
              ),
            ),
            if (processedImage != null)
              Image.memory(
                processedImage!,
                height: 300,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: MaterialButton(
                color: Colors.blue,
                elevation: 0,
                focusElevation: 0,
                hoverElevation: 0,
                disabledElevation: 0,
                highlightElevation: 0,
                padding: EdgeInsets.zero,
                minWidth: 10,
                shape: const RoundedRectangleBorder(),
                child: const Text('Save'),
                onPressed: () async {
                  if (processedImage == null) return;

                  final dynamic data = await ImageGallerySaver.saveImage(
                    processedImage!,
                  );
                  log(data.toString());
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final _picker = ImagePicker();
            final image = await _picker.getImage(
              source: ImageSource.gallery,
            );

            if (image != null) {
              final imageBytes = await image.readAsBytes();
              originalImage = imageBytes;
              setState(() {});
              log(originalImage?.length.toString() ?? '');
            }
          },
          child: const Icon(Icons.image),
        ),
      ),
    );
  }
}
