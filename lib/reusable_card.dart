import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
ReusableCard({required this.Colors,required this.CardChild,required this.onpress});
 final Color Colors;
  final Widget CardChild;
final  Function() onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
        onTap:onpress,
        child:Container(
        child: CardChild,
      margin:const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10),
      ),
    
      ),
    );
  }
}

