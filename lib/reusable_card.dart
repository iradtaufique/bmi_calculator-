import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // create a constructor that help to initialize the default color of the card
  ReusableCard({required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget? cardChild;

  // here you can use final Function()? onPress; they all work the some.
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
