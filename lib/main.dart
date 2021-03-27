import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webrtc/constants.dart';
import 'package:webrtc/widgets/catergory_title.dart';
import 'package:webrtc/widgets/food_card_widget.dart';

import 'details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cuddle',
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: kPrimaryColor,
          textTheme: TextTheme(
              headline: TextStyle(fontWeight: FontWeight.bold),
              button: TextStyle(fontWeight: FontWeight.bold),
              title: TextStyle(fontWeight: FontWeight.bold))),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Container(
            padding: EdgeInsets.all(8),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColor.withOpacity(.26),
            ),
            child: Container(
                padding: EdgeInsets.all(12),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
                child: SvgPicture.asset("assets/icons/plus.svg"))),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40, right: 20),
              child: Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset("assets/icons/menu.svg", height: 11)),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("Simple way to find \nTasty food",
                  style: Theme.of(context).textTheme.headline),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryTitle(title: "All", isActive: true),
                  CategoryTitle(title: "Italian"),
                  CategoryTitle(title: "Asian"),
                  CategoryTitle(title: "Chinese"),
                  CategoryTitle(title: "Burgers"),
                ],
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: kBorderColor)),
                child: SvgPicture.asset("assets/icons/search.svg")),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              reverse: false,
              child: Row(
                children: [
                  FoodCard(
                      click: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailsScreen();
                        }));
                      },
                      title: "Vegan salad bowl",
                      image: "assets/images/image_1.png",
                      price: "20",
                      calories: "420Kcal",
                      description:
                          "Good for health. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  FoodCard(
                      title: "Vegan salad bowl",
                      image: "assets/images/image_2.png",
                      price: "20",
                      calories: "420Kcal",
                      description:
                          "Good for health. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  FoodCard(
                      title: "Vegan salad bowl",
                      image: "assets/images/image_2.png",
                      price: "20",
                      calories: "420Kcal",
                      description:
                          "Good for health. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  FoodCard(
                      title: "Vegan salad bowl",
                      image: "assets/images/image_2.png",
                      price: "20",
                      calories: "420Kcal",
                      description:
                          "Good for health. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  SizedBox(height: 20)
                ],
              ),
            )
          ],
        ));
  }
}
