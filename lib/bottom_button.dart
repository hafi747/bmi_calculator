import 'package:flutter/material.dart';
import 'constant.dart';
class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap,required this.text });
final Function() onTap;
final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        child: Center(
          child: Text((text),
          style:bottomTextStyle ,
        
          ),
        ),
       
        width: double.infinity,
        margin: EdgeInsets.only(top: 15),
        height: bottomContainerHeight,
        color: bottomActiveColor,
        padding: EdgeInsets.only(bottom: 20),
      ),
    );
  }
}