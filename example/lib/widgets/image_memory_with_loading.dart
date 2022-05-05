import 'dart:typed_data';

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
    return Image.memory(
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
  }
}
