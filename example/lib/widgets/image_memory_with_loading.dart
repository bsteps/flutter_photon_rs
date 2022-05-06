import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class ImageMemoryWithLoading extends StatelessWidget {
  final Uint8List image;
  final double? height;
  final double? width;
  final BoxFit? fit;
  const ImageMemoryWithLoading({
    Key? key,
    required this.image,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("rebuilded image");
    final imageWidget = Image.memory(
      image,
      height: height,
      width: width,
      fit: fit,
      frameBuilder: (context, Widget child, int? frame, bool wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) return child;
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: frame != null
              ? child
              : Container(
                  alignment: Alignment.center,
                  height: height ?? width ?? 100,
                  width: width ?? height ?? 100,
                  child: const CircularProgressIndicator(),
                ),
        );
      },
    );

    final completer = Completer<ui.Image>();
    imageWidget.image.resolve(const ImageConfiguration()).addListener(ImageStreamListener(
      (image, synchronousCall) {
        completer.complete(image.image);
      },
    ));
    return Stack(
      children: [
        imageWidget,
        FutureBuilder<ui.Image>(
          future: completer.future,
          builder: (BuildContext context, AsyncSnapshot<ui.Image> snapshot) {
            if (snapshot.hasData) {
              return Text(
                '${snapshot.data?.width}x${snapshot.data?.height}',
              );
            } else {
              return const Text('Loading...');
            }
          },
        ),
      ],
    );
  }
}
