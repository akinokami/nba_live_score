import 'package:flutter/material.dart';

import 'custom_text.dart';

class RowDataWidget extends StatelessWidget {
  final String title;
  final Color? color;
  const RowDataWidget({super.key, required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.white,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              CustomText(
                text: 'Status',
                size: 14,
              ),
              CustomText(
                text: 'Finished',
                size: 14,
              ),
            ],
          ),
          CustomText(
            text: title,
            size: 14,
          ),
          const Column(
            children: [
              CustomText(
                text: 'Status',
                size: 14,
              ),
              CustomText(
                text: 'Finished',
                size: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
