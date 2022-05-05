import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_manipulation/image_manipulation.dart';
import 'package:image_manipulation_example/widgets/preview_buttom.dart';

class FilterList extends StatelessWidget {
  const FilterList({
    Key? key,
    required this.listedFilters,
    required this.filters,
    required this.originalImage,
  }) : super(key: key);
  final List<Filter> listedFilters;
  final ValueNotifier<Set<Filter>> filters;
  final ValueNotifier<Uint8List?> originalImage;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: listedFilters.length,
      scrollDirection: Axis.horizontal,
      cacheExtent: 9999,
      shrinkWrap: false,
      separatorBuilder: (context, _) {
        return const SizedBox(
          width: 16,
        );
      },
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      itemBuilder: (context, index) {
        return ValueListenableBuilder<Uint8List?>(
          valueListenable: originalImage,
          builder: (context, value, child) {
            if (value == null) {
              return Container();
            }
            return InkWell(
              onTap: () {
                if (filters.value.contains(listedFilters[index])) {
                  filters.value = {...filters.value}..remove(listedFilters[index]);
                } else {
                  filters.value = {...filters.value, listedFilters[index]};
                }
              },
              child: Stack(
                children: [
                  // FutureBuilder<Uint8List>(
                  //   future: ImageManipulation.manipulate(
                  //     bytes: value,
                  //     filters: [
                  //       listedFilters[index],
                  //     ],
                  //     outputFormat: OutputFormat.Jpeg,
                  //   ),
                  //   builder: (context, snapshot) {
                  // return PreviewButton(
                  ValueListenableBuilder<Set<Filter>>(
                      valueListenable: filters,
                      builder: (context, value, child) {
                        return PreviewButton(
                          // image: ImageMemoryWithLoading(
                          //   image: snapshot.data != null ? snapshot.data! : value,
                          //   height: 100,
                          //   width: 100,
                          //   fit: BoxFit.cover,
                          // ),
                          isSelected: value.contains(listedFilters[index]),
                          name: listedFilters[index].fullName,
                        );
                      }),
                  // );
                  //   },
                  // ),
                  // ValueListenableBuilder<Set<Filter>>(
                  //   valueListenable: filters,
                  //   builder: (context, value, child) {
                  //     if (!value.contains(listedFilters[index])) {
                  //       return Container();
                  //     }
                  //     return const Positioned(
                  //       right: 0,
                  //       child: Icon(
                  //         Icons.done,
                  //         color: Colors.green,
                  //       ),
                  //     );
                  //   },
                  // ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
