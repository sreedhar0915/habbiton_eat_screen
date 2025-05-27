import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habbiton_eat_screen/helpers/app_colors.dart';
import 'package:habbiton_eat_screen/helpers/screen_config.dart';
import 'package:habbiton_eat_screen/helpers/size_extension.dart';
import 'package:habbiton_eat_screen/screen/eat_screen/provider/eat_screen_provider.dart';
import 'package:habbiton_eat_screen/screen/eat_screen/widgets/blog_card.dart';
import 'package:habbiton_eat_screen/screen/eat_screen/widgets/meal_card.dart';
import 'package:habbiton_eat_screen/screen/eat_screen/widgets/percentage_indicator.dart';
import 'package:habbiton_eat_screen/screen/eat_screen/widgets/vlog_card.dart';
import 'package:provider/provider.dart';

class EatScreen extends StatefulWidget {
  const EatScreen({Key? key}) : super(key: key);

  @override
  State<EatScreen> createState() => _EatScreenState();
}

class _EatScreenState extends State<EatScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<EatScreenProvider>().meals;
    ScreenUtil.getInstance().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
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
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
              ],
            ),
            const SizedBox(height: 5),
            Text("Daily status",
                style: GoogleFonts.roboto(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: AppColors.firstTextcolor)),
            const SizedBox(height: 10),
            Stack(children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(65),
                      bottomLeft: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                      topLeft: Radius.circular(7)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
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
                                      value: 0.6,
                                      strokeWidth: 6,
                                      backgroundColor: Colors.grey[300],
                                      valueColor:
                                          const AlwaysStoppedAnimation<Color>(
                                              Colors.green),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.electric_bolt,
                                        color: AppColors.yellow,
                                        size: 10,
                                      ),
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
                      const SizedBox(height: 10),
                      const Divider(
                        color: AppColors.grey,
                      ),
                      Text(
                          "Don't forget to eat! Your lunch is due in 1hr 10min.",
                          style: GoogleFonts.roboto(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: AppColors.grey)),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.chickencontainer,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  "assets/images/chicken_salad_image.png",
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Next: Lunch",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 10.49,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.grey)),
                                          Text("Time: 12:30 PM",
                                              style: GoogleFonts.roboto(
                                                  fontSize: 10.49,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.grey)),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Text("Grilled Chicken Salad (450 kcal)",
                                          style: GoogleFonts.roboto(
                                              fontSize: 10.49,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.firstTextcolor)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
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
                              const SizedBox(height: 4),
                              const PercentageBar(
                                  percentage: 0.5, color: AppColors.green),
                              const SizedBox(height: 4),
                              const Text("20 - 30 gms",
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
                              const SizedBox(height: 4),
                              const PercentageBar(
                                  percentage: 0.5, color: AppColors.amber),
                              const SizedBox(height: 4),
                              const Text("10 - 15 gms",
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
                              const SizedBox(height: 4),
                              const PercentageBar(
                                  percentage: 0.5, color: AppColors.red),
                              const SizedBox(height: 4),
                              const Text("10 - 15 gms",
                                  style: TextStyle(color: AppColors.red)),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(color: AppColors.grey),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 250.w,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    AppColors.firstcolorbutton,
                                    AppColors.secondcolorbutton
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(82)),
                            child: Center(
                              child: Text("View my Personalized Diet Plan",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.white)),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.image_outlined)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 15,
                top: 50,
                bottom: 80,
                child: CircleAvatar(
                  backgroundColor: AppColors.transparent,
                  radius: 50,
                  backgroundImage: AssetImage(
                    "assets/images/chicken_salad_image.png",
                  ),
                ),
              ),
            ]),
            const SizedBox(height: 20),
            //meals today
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
              height: 195,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MealCard(
                      heading: provider[index]["heading"],
                      image: provider[index]["image"].toString(),
                      subheading: provider[index]["subheading"],
                      color: provider[index]["color"],
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemCount: provider.length),
            ),
            const SizedBox(height: 24),

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
                  itemBuilder: (context, index) => const VlogCard(
                        image: "assets/images/vlog_image.png",
                        heading: "Lorem ipsum dolor sit amet",
                        by: "By Lorem Ipsum",
                      ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
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
              (index) => const Blogcard(
                image: "assets/images/blog_image.png",
                heading: "Lorem ipsum dolor sit amet",
                by: "By Lorem Ipsum",
              ),
            ))
          ],
        ),
      ),
    );
  }
}
