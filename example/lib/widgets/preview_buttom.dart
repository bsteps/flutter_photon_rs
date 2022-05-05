import 'package:flutter/material.dart';

class PreviewButton extends StatelessWidget {
  // final Widget? image;
  final String name;
  final bool isSelected;

  const PreviewButton({
    Key? key,
    // this.image,
    required this.name,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // if (image != null)
        //   ClipRRect(
        //     borderRadius: BorderRadius.circular(999),
        //     child: image,
        //   ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            color: isSelected ? Colors.green : null,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 4,
            vertical: 8,
          ),
          child: Text(name),
        ),
      ],
    );
  }
}
