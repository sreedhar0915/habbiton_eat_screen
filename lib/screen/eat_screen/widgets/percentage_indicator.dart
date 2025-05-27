import 'package:flutter/material.dart';
import 'package:habbiton_eat_screen/helpers/size_extension.dart';

class PercentageBar extends StatelessWidget {
  final double percentage;
  final Color color;

  const PercentageBar(
      {super.key, required this.percentage, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      width: 60.w,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Stack(
        children: [
          FractionallySizedBox(
            widthFactor: percentage,
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
