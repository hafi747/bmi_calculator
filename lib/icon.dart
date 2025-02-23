import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton({ required this.icon,required this.onPressed});
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child:  Icon(icon),
      onPressed: onPressed,
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Colors.grey,

    );
  }
}
// FloatingActionButton(onPressed:
                      
                       //(){},
                      // backgroundColor:Colors.grey ,
                      // child: Icon(Icons.add,
                      // color: Colors.white,
                      // ),
                      
                      // ),