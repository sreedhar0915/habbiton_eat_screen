import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habbiton_eat_screen/helpers/app_colors.dart';
import 'package:habbiton_eat_screen/helpers/size_extension.dart';
import 'package:habbiton_eat_screen/helpers/sized_box.dart';

class Blogcard extends StatelessWidget {
  final String image;
  final String heading;
  final String by;

  const Blogcard(
      {super.key,
      required this.image,
      required this.heading,
      required this.by});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 89.h,
        width: 343.w,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            sizedBoxWithWidth(10),
            Container(
              height: 68,
              width: 68,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
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
                      sizedBoxWithWidth(5),
                      const Text("0h 12m"),
                      sizedBoxWithWidth(16),
                      const Icon(Icons.visibility_outlined, size: 14),
                      sizedBoxWithWidth(5),
                      const Text("65k"),
                      sizedBoxWithWidth(16),
                      const Icon(Icons.star_border, size: 14),
                      sizedBoxWithWidth(5),
                      const Text("4.5"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
