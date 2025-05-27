import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habbiton_eat_screen/helpers/app_colors.dart';

class MealCard extends StatelessWidget {
  final String heading;
  final String subheading;
  final Color color;
  final String image;
  const MealCard({
    super.key,
    required this.heading,
    required this.subheading,
    required this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 150,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 170,
          width: 110,
          margin: const EdgeInsets.only(right: 12),
          padding:
              const EdgeInsets.only(bottom: 10, right: 10, left: 10, top: 40),
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(71),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
              topLeft: Radius.circular(8),
            ),
            // gradient: const LinearGradient(
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            //   colors: [
            //     AppColors.white, // light pink/white
            //     AppColors.breakfast // pink
            //   ],
            // ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(heading,
                  style: GoogleFonts.poppins(
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17)),
              const SizedBox(height: 4),
              Text(subheading,
                  maxLines: 3,
                  style: GoogleFonts.poppins(
                      color: AppColors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 12)),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.white,
                    child: Icon(
                      Icons.add,
                      color: AppColors.blue,
                    ),
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.white,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: AppColors.blue,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      Positioned(
        top: 0,
        left: 0,
        child: Image.asset(
          image,
          height: 60,
          width: 60,
        ),
      ),
    ]);
  }
}
