import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/bottom_button.dart';
//import 'package:flutter_bmi_calculator/bottom_button.dart';

//import 'package:flutter_bmi_calculator/bottom_button.dart';
import 'package:flutter_bmi_calculator/constant.dart';
import 'package:flutter_bmi_calculator/reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult,required this.resultText,required this.intrerptation});
  final String bmiResult;
  final String resultText;
  final String intrerptation;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('BMI Calculator')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
            child: Text('Your Result',style:
            kbottomTextStyle,
            ),
            

          )),
          Expanded(
            child:ReusableCard(Colors: ActiveCardColour,onpress: (){}, CardChild: 
           Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(resultText,style: knumberTextStyle,),
              Text(bmiResult,
              style: kiconTextSTyle,),
              Text(intrerptation,
              textAlign: TextAlign.center,
              
              style:kmagicTextStyle ,),

            ],
           
          )
          )
          ),
          BottomButton(text: 'RE_CALCULATE',
         onTap: () {
          Navigator.pop(context);
          },)
          
         
        ],
      )
      ),
    );
  }
}