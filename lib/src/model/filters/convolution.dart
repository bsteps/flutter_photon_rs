import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_photon_rs/src/bridge_generated.dart';
import 'package:flutter_photon_rs/src/model/filters/filter.dart';
import 'package:flutter_photon_rs/src/util.dart';

part 'convolution.freezed.dart';

@freezed
class Convolution with _$Convolution, Filter {
  const Convolution._();

  @Implements<Filter>()
  const factory Convolution.boxBlur() = ConvolutionBoxBlur;
  @Implements<Filter>()
  const factory Convolution.detect45DegLines() = ConvolutionDetect45DegLines;
  @Implements<Filter>()
  const factory Convolution.detect135DegLines() = ConvolutionDetect135DegLines;
  @Implements<Filter>()
  const factory Convolution.detectVerticalLines() = ConvolutionDetectVerticalLines;
  @Implements<Filter>()
  const factory Convolution.detectHorizontalLines() = ConvolutionDetectHorizontalLines;
  @Implements<Filter>()
  const factory Convolution.edgeDetection() = ConvolutionEdgeDetection;
  @Implements<Filter>()
  const factory Convolution.edgeOne() = ConvolutionEdgeOne;
  @Implements<Filter>()
  const factory Convolution.emboss() = ConvolutionEmboss;
  @Implements<Filter>()
  const factory Convolution.identity() = ConvolutionIdentity;
  @Implements<Filter>()
  const factory Convolution.laplace() = ConvolutionLaplace;
  @Implements<Filter>()
  const factory Convolution.noiseReduction() = ConvolutionNoiseReduction;
  @Implements<Filter>()
  const factory Convolution.prewittHorizontal() = ConvolutionPrewittHorizontal;
  @Implements<Filter>()
  const factory Convolution.sharpen() = ConvolutionSharpen;
  @Implements<Filter>()
  const factory Convolution.sobelHorizontal() = ConvolutionSobelHorizontal;
  @Implements<Filter>()
  const factory Convolution.sobelVertical() = ConvolutionSobelVertical;
  @Implements<Filter>()
  const factory Convolution.gaussianBlur({
    required int radius,
  }) = ConvolutionGaussianBlur;

  @override
  String get name {
    return map(
      boxBlur: (_) => "box_blur",
      detect45DegLines: (_) => "detect_45_deg_lines",
      detect135DegLines: (_) => "detect_135_deg_lines",
      detectVerticalLines: (_) => "detect_vertical_lines",
      detectHorizontalLines: (_) => "detect_horizontal_lines",
      edgeDetection: (_) => "edge_detection",
      edgeOne: (_) => "edge_one",
      emboss: (_) => "emboss",
      identity: (_) => "identity",
      laplace: (_) => "laplace",
      noiseReduction: (_) => "noise_reduction",
      prewittHorizontal: (_) => "prewitt_horizontal",
      sharpen: (_) => "sharpen",
      sobelHorizontal: (_) => "sobel_horizontal",
      sobelVertical: (_) => "sobel_vertical",
      gaussianBlur: (_) => "gaussian_blur",
    );
  }

  @override
  String get fullName {
    return name.split('_').map((e) => "${e[0].toUpperCase()}${e.substring(1)}").join(' ');
  }

  @override
  PhotonFilter toPhotonFilter() {
    return maybeMap(
      orElse: () {
        return toPhotonFilterHelper(name: name);
      },
      gaussianBlur: (value) {
        return toPhotonFilterHelper(
          name: name,
          value1: value.radius,
        );
      },
    );
  }
}
