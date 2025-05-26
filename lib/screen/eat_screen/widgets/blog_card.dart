import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habbiton_eat_screen/helpers/app_colors.dart';
import 'package:habbiton_eat_screen/helpers/size_extension.dart';

class Blogcard extends StatelessWidget {
  const Blogcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 89,
        width: 343.w,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(width: 10),
            Container(
              height: 68,
              width: 68,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/images/blog_image.png"),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Lorem ipsum dolor sit amet",
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.secondTextcolor)),
                  SizedBox(height: 5),
                  Text("By Lorem Ipsum",
                      style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondTextcolor)),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.timer_sharp, size: 14),
                      SizedBox(width: 4),
                      Text("0h 12m"),
                      SizedBox(width: 16),
                      Icon(Icons.visibility_outlined, size: 14),
                      SizedBox(width: 4),
                      Text("65k"),
                      SizedBox(width: 16),
                      Icon(Icons.star_border, size: 14),
                      SizedBox(width: 4),
                      Text("4.5"),
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
