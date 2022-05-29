import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart' hide Transform;
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter_photon_rs/flutter_photon_rs.dart';
import 'package:flutter_photon_rs_example/widgets/filter_list.dart';
import 'package:flutter_photon_rs_example/widgets/image_memory_with_loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

const listedMonochromeFilters = [
  Monochrome.grayscale(),
  Monochrome.sepia(),
  Monochrome.blueGrayscale(),
  Monochrome.greenGrayscale(),
  Monochrome.redGrayscale(),
  Monochrome.decomposeMax(),
  Monochrome.decomposeMin(),
  Monochrome.grayscaleHumanCorrection(),
  Monochrome.grayscaleShades(1),
  Monochrome.threshold(100),
];

const listedPresetFilters = [
  PresetFilter.oceanic(),
  PresetFilter.islands(),
  PresetFilter.marine(),
  PresetFilter.seagreen(),
  PresetFilter.flagblue(),
  PresetFilter.diamante(),
  PresetFilter.liquid(),
  PresetFilter.vintage(),
  PresetFilter.perfume(),
  PresetFilter.serenity(),
  PresetFilter.golden(),
  PresetFilter.pastelPink(),
  PresetFilter.cali(),
  PresetFilter.dramatic(),
  PresetFilter.firenze(),
  PresetFilter.obsidian(),
  PresetFilter.lofi(),
];

const listedTintFilters = [
  Tint.radio(),
  Tint.twenties(),
  Tint.rosetint(),
  Tint.mauve(),
  Tint.bluechrome(),
];

const listedChannelFilters = [
  Channel.incBlueChannel(),
  Channel.incGreenChannel(),
  Channel.incRedChannel(),
  Channel.inc2Channels(),
  Channel.decBlueChannel(),
  Channel.decGreenChannel(),
  Channel.decRedChannel(),
  Channel.swapBGChannels(),
  Channel.swapRBChannels(),
  Channel.swapRGChannels(),
  Channel.removeBlueChannel(),
  Channel.removeGreenChannel(),
  Channel.removeRedChannel(),
];

const listedColourSpaceFilters = [
  ColourSpace.hsl(level: 0.3, mode: ColourSpaceMode.darken),
  ColourSpace.hsl(level: 0.3, mode: ColourSpaceMode.desaturate),
  ColourSpace.hsl(level: 0.3, mode: ColourSpaceMode.lighten),
  ColourSpace.hsl(level: 0.3, mode: ColourSpaceMode.saturate),
  ColourSpace.hsl(level: 0.3, mode: ColourSpaceMode.shift_hue),
  ColourSpace.hsv(level: 0.3, mode: ColourSpaceMode.darken),
  ColourSpace.hsv(level: 0.3, mode: ColourSpaceMode.desaturate),
  ColourSpace.hsv(level: 0.3, mode: ColourSpaceMode.lighten),
  ColourSpace.hsv(level: 0.3, mode: ColourSpaceMode.saturate),
  ColourSpace.hsv(level: 0.3, mode: ColourSpaceMode.shift_hue),
  ColourSpace.lch(level: 0.3, mode: ColourSpaceMode.darken),
  ColourSpace.lch(level: 0.3, mode: ColourSpaceMode.desaturate),
  ColourSpace.lch(level: 0.3, mode: ColourSpaceMode.lighten),
  ColourSpace.lch(level: 0.3, mode: ColourSpaceMode.saturate),
  ColourSpace.lch(level: 0.3, mode: ColourSpaceMode.shift_hue),
  ColourSpace.mixWithColour(opacity: .5, rgb: Rgb(r: 10, g: 20, b: 43)),
];

const listedEffectFilters = [
  Effect.adjustContrast(contrast: 100),
  Effect.colorHorizontalStrips(length: 4, rgb: Rgb(r: 100, g: 100, b: 100)),
  Effect.colorVerticalStrips(length: 4, rgb: Rgb(r: 100, g: 100, b: 100)),
  Effect.colorize(),
  Effect.frostedGlass(),
  Effect.halftone(),
  Effect.primary(),
  Effect.solarize(),
  Effect.incBrightness(brightness: 50),
  Effect.multipleOffsets(offset: 20, channelIndex2: 2, channelIndex: 1),
  Effect.offset(offset: 10, channelIndex: 0),
  Effect.offset(offset: 10, channelIndex: 1),
  Effect.offset(offset: 10, channelIndex: 2),
  Effect.oil(intensity: 1, radius: 5),
  Effect.tint(rOffset: 20, bOffset: 20, gOffset: 20),
];

const listedConvolutionFilters = [
  Convolution.boxBlur(),
  Convolution.detect45DegLines(),
  Convolution.detect135DegLines(),
  Convolution.detectVerticalLines(),
  Convolution.detectHorizontalLines(),
  Convolution.edgeDetection(),
  Convolution.edgeOne(),
  Convolution.emboss(),
  Convolution.identity(),
  Convolution.laplace(),
  Convolution.noiseReduction(),
  Convolution.prewittHorizontal(),
  Convolution.sharpen(),
  Convolution.sobelHorizontal(),
  Convolution.sobelVertical(),
  Convolution.gaussianBlur(
    radius: 20,
  ),
];

Future<List<Filter>> listedMultipleFilters() async {
  final watermark = await rootBundle.load('images/watermark.png');
  final blendImage = await rootBundle.load('images/blend.jpg');
  return [
    Multiple.watermarkFromBytes(
      x: 20,
      y: 20,
      bytes: Uint8List.view(
        watermark.buffer,
        watermark.offsetInBytes,
        watermark.lengthInBytes,
      ),
    ),
    const Multiple.applyGradient(),
    Multiple.replaceBackground(
      bytes: Uint8List.view(
        blendImage.buffer,
        blendImage.offsetInBytes,
        blendImage.lengthInBytes,
      ),
      rgb: const Rgb(
        r: 1,
        g: 255,
        b: 19,
      ),
    ),
    ...BlendMode.values.map((e) {
      return Multiple.blend(
        bytes: Uint8List.view(
          blendImage.buffer,
          blendImage.offsetInBytes,
          blendImage.lengthInBytes,
        ),
        blendMode: e,
      );
    }).toList(),
  ];
}

const listedTransformationFilters = [
  Transform.crop(
    x1: 20,
    y1: 20,
    x2: 1000,
    y2: 1000,
  ),
  Transform.flipH(),
  Transform.flipV(),
  Transform.paddingBottom(
    color: Colors.blue,
    padding: 20,
  ),
  Transform.paddingTop(
    color: Colors.blue,
    padding: 50,
  ),
  Transform.paddingRight(
    color: Colors.blue,
    padding: 50,
  ),
  Transform.paddingLeft(
    color: Colors.blue,
    padding: 50,
  ),
  Transform.paddingUniform(
    color: Colors.blue,
    padding: 50,
  ),
  Transform.resize(
    height: 300,
    width: 200,
    samplingFilter: SamplingFilter.nearest,
  ),
  Transform.resize(
    height: 300,
    width: 200,
    samplingFilter: SamplingFilter.catmullRom,
  ),
  Transform.resize(
    height: 300,
    width: 200,
    samplingFilter: SamplingFilter.gaussian,
  ),
  Transform.resize(
    height: 300,
    width: 200,
    samplingFilter: SamplingFilter.lanczos3,
  ),
  Transform.resize(
    height: 300,
    width: 200,
    samplingFilter: SamplingFilter.triangle,
  ),
];

class _MyAppState extends State<MyApp> {
  ValueNotifier<Uint8List?> originalImage = ValueNotifier(null);
  ValueNotifier<Uint8List?> resizedImage = ValueNotifier(null);
  ValueNotifier<Set<Filter>> filters = ValueNotifier({});
  ValueNotifier<double> slider = ValueNotifier(0);
  ValueNotifier<double> sliderDelyed = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    slider.addListener(() async {
      await Future.delayed(
        const Duration(
          milliseconds: 200,
        ),
      );
      sliderDelyed.value = slider.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image Manipulation Example'),
          actions: [
            IconButton(
              onPressed: () async {
                if (filters.value.isEmpty) return;
                final stopwatch = Stopwatch()..start();

                final bytes = await Photon.process(
                  bytes: originalImage.value!,
                  filters: filters.value.toList(),
                  outputFormat: OutputFormat.Jpeg,
                );
                final data = await ImageGallerySaver.saveImage(
                  bytes,
                );
                log(stopwatch.elapsed.inMilliseconds.toString() + "ms");

                log(data.toString());
              },
              icon: const Icon(
                Icons.download,
              ),
            )
          ],
        ),
        body: Builder(builder: (context) {
          return ListView(
            cacheExtent: 999999,
            children: [
              ValueListenableBuilder<Uint8List?>(
                valueListenable: resizedImage,
                builder: (context, value, child) {
                  return ValueListenableBuilder<double>(
                    valueListenable: sliderDelyed,
                    builder: (context, sliderValue, _) {
                      return ValueListenableBuilder<Set<Filter>>(
                        valueListenable: filters,
                        builder: (context, filters, child) {
                          if (value == null || filters.isNotEmpty || sliderValue != 0) {
                            return Container();
                          }

                          if (filters.isEmpty) {
                            return ImageMemoryWithLoading(
                              image: value,
                              width: MediaQuery.of(context).size.width,
                              // cacheWidth: MediaQuery.of(context).size.width.toInt() * window.devicePixelRatio.ceil(),
                            );
                          }

                          return Container();
                        },
                      );
                    },
                  );
                },
              ),
              ValueListenableBuilder<double>(
                valueListenable: sliderDelyed,
                builder: (context, sliderValue, _) {
                  return ValueListenableBuilder<Set<Filter>>(
                    valueListenable: filters,
                    builder: (context, value, child) {
                      if (resizedImage.value == null || (filters.value.isEmpty && sliderValue == 0)) {
                        return Container();
                      }
                      Stopwatch stopwatch = Stopwatch();

                      return FutureBuilder<Uint8List>(
                        future: Photon.process(
                          bytes: resizedImage.value!,
                          filters: [
                            ...value.toList(),
                            if (sliderValue != 0)
                              Convolution.gaussianBlur(
                                radius: (sliderValue * 10).toInt(),
                              ),
                          ],
                          outputFormat: OutputFormat.Jpeg,
                        ),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.none) {
                            stopwatch.reset();
                            stopwatch.start();
                          } else if (snapshot.connectionState == ConnectionState.waiting) {
                            if (!stopwatch.isRunning) {
                              stopwatch.reset();
                              stopwatch.start();
                            }
                          } else if (snapshot.connectionState == ConnectionState.done) {
                            stopwatch.stop();
                          }

                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              LayoutBuilder(builder: (context, size) {
                                return ImageMemoryWithLoading(
                                  image: snapshot.data == null ? resizedImage.value! : snapshot.data!,
                                  width: size.constrainWidth(),
                                  // cacheWidth: size.constrainWidth().toInt() * window.devicePixelRatio.ceil(),
                                  timeInMs: stopwatch.elapsed.inMilliseconds,
                                );
                              }),
                              if (snapshot.data == null) const CircularProgressIndicator(),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              ),
              ValueListenableBuilder<double>(
                valueListenable: slider,
                builder: (context, value, c) {
                  if (resizedImage.value == null) {
                    return Container();
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 12,
                          right: 12,
                          top: 12,
                        ),
                        child: Text("Gaussian Blur"),
                      ),
                      Slider(
                        value: value,
                        min: 0,
                        max: 1,
                        onChanged: (value) {
                          slider.value = value;
                        },
                        onChangeEnd: (value) {
                          slider.value = value;
                        },
                      ),
                    ],
                  );
                },
              ),
              SizedBox(
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ValueListenableBuilder<Uint8List?>(
                      valueListenable: originalImage,
                      builder: (context, value, child) {
                        if (value == null) return Container();
                        return const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Text(
                            'Monochrome Filter',
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: FilterList(
                        filters: filters,
                        listedFilters: listedMonochromeFilters,
                        originalImage: originalImage,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ValueListenableBuilder<Uint8List?>(
                      valueListenable: originalImage,
                      builder: (context, value, child) {
                        if (value == null) return Container();
                        return const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Text(
                            'Preset Filter',
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: FilterList(
                        filters: filters,
                        listedFilters: listedPresetFilters,
                        originalImage: originalImage,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ValueListenableBuilder<Uint8List?>(
                      valueListenable: originalImage,
                      builder: (context, value, child) {
                        if (value == null) return Container();
                        return const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Text(
                            'Tints',
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: FilterList(
                        filters: filters,
                        listedFilters: listedTintFilters,
                        originalImage: originalImage,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ValueListenableBuilder<Uint8List?>(
                      valueListenable: originalImage,
                      builder: (context, value, child) {
                        if (value == null) return Container();
                        return const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Text(
                            'Channels',
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: FilterList(
                        filters: filters,
                        listedFilters: listedChannelFilters,
                        originalImage: originalImage,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ValueListenableBuilder<Uint8List?>(
                      valueListenable: originalImage,
                      builder: (context, value, child) {
                        if (value == null) return Container();
                        return const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Text(
                            'Transformation',
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: FilterList(
                        filters: filters,
                        listedFilters: listedTransformationFilters,
                        originalImage: originalImage,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ValueListenableBuilder<Uint8List?>(
                      valueListenable: originalImage,
                      builder: (context, value, child) {
                        if (value == null) return Container();
                        return const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Text(
                            'Multiple',
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: FutureBuilder<List<Filter>>(
                        future: listedMultipleFilters(),
                        builder: (context, snapshot) {
                          if (snapshot.data == null) {
                            return Container();
                          }
                          return FilterList(
                            filters: filters,
                            listedFilters: snapshot.data ?? [],
                            originalImage: originalImage,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ValueListenableBuilder<Uint8List?>(
                      valueListenable: originalImage,
                      builder: (context, value, child) {
                        if (value == null) return Container();
                        return const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Text(
                            'Effects',
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: FilterList(
                        filters: filters,
                        listedFilters: listedEffectFilters,
                        originalImage: originalImage,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ValueListenableBuilder<Uint8List?>(
                      valueListenable: originalImage,
                      builder: (context, value, child) {
                        if (value == null) return Container();
                        return const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Text(
                            'Colour Spaces',
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: FilterList(
                        filters: filters,
                        listedFilters: listedColourSpaceFilters,
                        originalImage: originalImage,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ValueListenableBuilder<Uint8List?>(
                      valueListenable: originalImage,
                      builder: (context, value, child) {
                        if (value == null) return Container();
                        return const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: Text(
                            'Convolution',
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: FilterList(
                        filters: filters,
                        listedFilters: listedConvolutionFilters,
                        originalImage: originalImage,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          );
        }),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () async {
              Uint8List? imageBytes;
              if (Platform.isAndroid) {
                final _picker = ImagePicker();
                final image = await _picker.pickImage(
                  source: ImageSource.gallery,
                );

                imageBytes = await image?.readAsBytes();
              } else {
                final blendImage = await rootBundle.load('images/blend.jpg');
                imageBytes = Uint8List.view(
                  blendImage.buffer,
                  blendImage.offsetInBytes,
                  blendImage.lengthInBytes,
                );
              }

              if (imageBytes != null) {
                originalImage.value = imageBytes;

                final stopwatch = Stopwatch()..start();
                final codec = await instantiateImageCodec(
                  imageBytes,
                  targetWidth: MediaQuery.of(context).size.width.toInt() * window.devicePixelRatio.ceil(),
                );
                final frameInfo = await codec.getNextFrame();
                final uiImage = frameInfo.image;
                // ----------

                // Convert to List<int>
                // ----------
                final resizedByteData = await uiImage.toByteData(
                  format: ImageByteFormat.png,
                ) as ByteData;
                final resizedUint8List =
                    resizedByteData.buffer.asUint8List(resizedByteData.offsetInBytes, resizedByteData.lengthInBytes);
                resizedImage.value = resizedUint8List;
                log("Resize Image: ${stopwatch.elapsedMilliseconds}ms");

                setState(() {});
                log(originalImage.value?.length.toString() ?? '');
                log(resizedImage.value?.length.toString() ?? '');
              }
            },
            child: const Icon(Icons.image),
          );
        }),
      ),
    );
  }
}
