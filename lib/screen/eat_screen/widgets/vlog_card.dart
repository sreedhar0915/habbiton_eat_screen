import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habbiton_eat_screen/helpers/app_colors.dart';
import 'package:habbiton_eat_screen/helpers/size_extension.dart';
import 'package:habbiton_eat_screen/helpers/sized_box.dart';

class VlogCard extends StatelessWidget {
  final String image;
  final String heading;
  final String by;

  const VlogCard(
      {super.key,
      required this.image,
      required this.heading,
      required this.by});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 229,
      width: 244.w,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Stack(children: [
            Image.asset(
              image,
              height: 130.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const Positioned(
                top: 50,
                bottom: 50,
                right: 50,
                left: 50,
                child: Icon(
                  Icons.play_circle_outline_rounded,
                  color: AppColors.playbutton,
                  size: 50,
                ))
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(heading,
                    style: GoogleFonts.roboto(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.secondTextcolor)),
                sizedBoxWithHeight(5),
                Text(by,
                    style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.secondTextcolor)),
                sizedBoxWithHeight(5),
                Row(
                  children: [
                    const Icon(Icons.timer_sharp, size: 14),
                    sizedBoxWithWidth(4),
                    const Text("0h 12m"),
                    sizedBoxWithWidth(16),
                    const Icon(Icons.visibility_outlined, size: 14),
                    sizedBoxWithWidth(4),
                    const Text("65k"),
                    sizedBoxWithWidth(16),
                    const Icon(Icons.star_border, size: 14),
                    sizedBoxWithWidth(4),
                    const Text("4.5"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
