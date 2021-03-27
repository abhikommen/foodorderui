import 'package:flutter/material.dart';

import '../constants.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool isActive;
  CategoryTitle({this.title, this.isActive = false}) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Text(title != null ? title : "Na",
              style: Theme.of(context).textTheme.button.copyWith(
                  color:
                      isActive ? kPrimaryColor : kTextColor.withOpacity(0.4)))
        ],
      ),
    );
  }
}
