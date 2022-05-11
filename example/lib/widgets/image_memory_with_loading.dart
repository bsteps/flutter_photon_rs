import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class ImageMemoryWithLoading extends StatelessWidget {
  final Uint8List image;
  final double? height;
  final double? width;
  final int? cacheHeight;
  final int? cacheWidth;
  final BoxFit? fit;
  final int? timeInMs;
  const ImageMemoryWithLoading({
    Key? key,
    required this.image,
    this.height,
    this.width,
    this.cacheHeight,
    this.cacheWidth,
    this.fit = BoxFit.cover,
    this.timeInMs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageWidget = Image.memory(
      image,
      key: key,
      height: height,
      width: width,
      cacheHeight: cacheHeight,
      cacheWidth: cacheWidth,
      fit: fit,
      gaplessPlayback: true,
      // frameBuilder: (context, Widget child, int? frame, bool wasSynchronouslyLoaded) {
      //   if (wasSynchronouslyLoaded) return child;
      //   log("frame: " + frame.toString());
      //   return AnimatedSwitcher(
      //     duration: const Duration(milliseconds: 200),
      //     child: frame != null
      //         ? child
      //         : Container(
      //             alignment: Alignment.center,
      //             height: height ?? width ?? 100,
      //             width: width ?? height ?? 100,
      //             child: const CircularProgressIndicator(),
      //           ),
      //   );
      // },
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
              return Container(
                color: Colors.black,
                child: Text(
                  '${snapshot.data?.width}x${snapshot.data?.height}',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              );
            } else {
              return const Text('Loading...');
            }
          },
        ),
        if (timeInMs != null)
          Positioned(
            right: 0,
            child: Container(
              color: Colors.black,
              child: Text(
                "${timeInMs}ms",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
      ],
    );
  }
}
