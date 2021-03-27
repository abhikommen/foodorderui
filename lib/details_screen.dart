import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webrtc/constants.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/icons/backward.svg", height: 11),
              SvgPicture.asset("assets/icons/menu.svg", height: 11)
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.all(6),
            height: 205,
            width: 205,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: kSecondaryColor),
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/image_1.png"),
                        fit: BoxFit.cover))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Vegan salad bowl\n",
                    style: Theme.of(context).textTheme.title),
                TextSpan(
                    text: "With red tomato",
                    style: TextStyle(color: kTextColor.withOpacity(.5)))
              ])),
              Text("\$20",
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .copyWith(color: kPrimaryColor))
            ],
          ),
          SizedBox(height: 20),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt laborum. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
          Spacer(),
          Row(children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 27),
              decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.19),
                  borderRadius: BorderRadius.circular(27)),
              child: Row(
                children: [
                  Text("Add to bag", style: Theme.of(context).textTheme.button),
                  SizedBox(width: 30),
                  SvgPicture.asset("assets/icons/forward.svg", height: 11)
                ],
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
