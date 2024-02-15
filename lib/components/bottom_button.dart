import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTop, @required this.buttonText});

  final Function()? onTop;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonText!,
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}
