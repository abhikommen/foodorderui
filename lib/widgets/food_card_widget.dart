import 'package:flutter/material.dart';

import '../constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final String price;
  final String calories;
  final String description;
  final Function click;

  const FoodCard({
    Key key,
    this.title,
    this.ingredient,
    this.image,
    this.price,
    this.calories,
    this.description,
    this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 400,
        width: 270,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                  height: 380,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34),
                      color: kPrimaryColor.withOpacity(0.06))),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                  height: 181,
                  width: 181,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(0.15))),
            ),
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                  height: 184,
                  width: 276,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(image)))),
            ),
            Positioned(
              right: 10,
              top: 80,
              child: Text(
                "\$$price",
                style: Theme.of(context)
                    .textTheme
                    .headline
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
                top: 201,
                left: 40,
                right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.title),
                    Text("With $ingredient",
                        style: TextStyle(color: kTextColor.withOpacity(0.4))),
                    SizedBox(height: 15),
                    Text(description,
                        maxLines: 3,
                        style: TextStyle(color: kTextColor.withOpacity(0.65))),
                    SizedBox(height: 16),
                    Text(calories)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
