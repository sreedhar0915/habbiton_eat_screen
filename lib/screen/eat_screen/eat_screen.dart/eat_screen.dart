import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habbiton_eat_screen/helpers/app_colors.dart';
import 'package:habbiton_eat_screen/helpers/screen_config.dart';
import 'package:habbiton_eat_screen/helpers/size_extension.dart';
import 'package:habbiton_eat_screen/screen/eat_screen/widgets/blog_card.dart';
import 'package:habbiton_eat_screen/screen/eat_screen/widgets/meal_card.dart';
import 'package:habbiton_eat_screen/screen/eat_screen/widgets/vlog_card.dart';

class EatScreen extends StatefulWidget {
  const EatScreen({Key? key}) : super(key: key);

  @override
  State<EatScreen> createState() => _EatScreenState();
}

class _EatScreenState extends State<EatScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.getInstance().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Eat",
                    style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: AppColors.firstTextcolor)),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
              ],
            ),
            SizedBox(height: 5),
            Text("Daily status",
                style: GoogleFonts.roboto(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: AppColors.firstTextcolor)),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(65),
                    bottomLeft: Radius.circular(7),
                    bottomRight: Radius.circular(7),
                    topLeft: Radius.circular(7)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("1200 kcal",
                                style: GoogleFonts.roboto(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.firstTextcolor)),
                            Text("consumed",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  width: 70,
                                  height: 70,
                                  child: CircularProgressIndicator(
                                    value: 0.6, // example
                                    strokeWidth: 6,
                                    backgroundColor: Colors.grey[300],
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.green),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text("2000",
                                        style: GoogleFonts.roboto(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.firstTextcolor),
                                        textAlign: TextAlign.center),
                                    Text(
                                      "kcal",
                                      style: GoogleFonts.roboto(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.firstTextcolor),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text("800 kcal",
                                style: GoogleFonts.roboto(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.firstTextcolor)),
                            Text("remaining",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.grey)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(
                      color: AppColors.grey,
                    ),
                    Text("Don't forget to eat! Your lunch is due in 1hr 10min.",
                        style: GoogleFonts.roboto(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey)),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            child: Image(
                              image: AssetImage(
                                  "assets/images/chicken_salad_image.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Next: Lunch",
                                        style: GoogleFonts.roboto(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.grey)),
                                    Text("Time: 12:30 PM",
                                        style: GoogleFonts.roboto(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.grey)),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Text("Grilled Chicken Salad (450 kcal)",
                                    style: GoogleFonts.roboto(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.grey)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("Protein",
                                style: GoogleFonts.roboto(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.grey)),
                            SizedBox(height: 4),
                            Container(
                                height: 3, width: 40, color: AppColors.green),
                            SizedBox(height: 4),
                            Text("20 - 30 gms",
                                style: TextStyle(color: AppColors.green)),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Carbs",
                                style: GoogleFonts.roboto(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.grey)),
                            SizedBox(height: 4),
                            Container(
                                height: 3, width: 40, color: AppColors.amber),
                            SizedBox(height: 4),
                            Text("10 - 15 gms",
                                style: TextStyle(color: AppColors.amber)),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Fat",
                                style: GoogleFonts.roboto(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.grey)),
                            SizedBox(height: 4),
                            Container(
                                height: 3, width: 40, color: AppColors.red),
                            SizedBox(height: 4),
                            Text("10 - 15 gms",
                                style: TextStyle(color: AppColors.red)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(color: AppColors.grey),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 250.w,
                          decoration: BoxDecoration(
                              color: const Color(0xFF29DB2F),
                              borderRadius: BorderRadius.circular(82)),
                          child: Center(
                            child: Text("View my Personalized Diet Plan",
                                style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.white)),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.image_outlined)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Meals today
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Meals today",
                    style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.firstTextcolor)),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Show stats",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.green),
                    )),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => MealCard(),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: 4),
            ),
            SizedBox(height: 24),

            // Vlogs section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Vlogs",
                    style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.firstTextcolor)),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.green),
                    )),
              ],
            ),
            SizedBox(
              height: 250,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => VlogCard(),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: 4),
            ),
            // Blogs section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Blogs",
                    style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.firstTextcolor)),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.green),
                    )),
              ],
            ),
            Column(
                children: List.generate(
              5,
              (index) => Blogcard(),
            ))
          ],
        ),
      ),
    );
  }
}
