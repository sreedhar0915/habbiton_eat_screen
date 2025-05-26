import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habbiton_eat_screen/helpers/app_colors.dart';

class MealCard extends StatelessWidget {
  const MealCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/lunch.png",
            height: 50,
            width: 50,
          ),
          Text("Lunch",
              style: GoogleFonts.poppins(
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17)),
          SizedBox(height: 4),
          Text("Salmon,Mixed veggies,Avocado",
              style: GoogleFonts.poppins(
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 12)),
          SizedBox(height: 5),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.white,
                child: Icon(
                  Icons.add,
                  color: AppColors.blue,
                ),
              ),
              Spacer(),
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
    );
  }
}
