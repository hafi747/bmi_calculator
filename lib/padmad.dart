// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constant.dart';
import 'result.dart';
import 'bottom_button.dart';
import 'icon.dart';
import 'calculate_brain.dart';
//import 'dart:math';


enum GenderType {
  male,
  female,
}

class padmad extends StatefulWidget {
  @override
  State<padmad> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<padmad> {

 GenderType selectedGender = GenderType.male;
 int height=180;
 int Weight=60;
 int Age=60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                       onpress:(){
                      setState(() {
                        selectedGender = GenderType.male; // Use = instead of ==
                      });
                       },
                      Colors:
                          selectedGender ==GenderType.male ? Colors.white : Colors.white70,
                      CardChild: iconContent(icon: Icons.male, label: 'MALE'),
                    ),
                 
                ),
                Expanded(
                 
                  
                   
                    child: ReusableCard(
                       onpress:(){
                      setState(() {
                        selectedGender =GenderType.female; // Use = instead of ==
                      });
                       },
                      Colors:
                          selectedGender == GenderType.female ?  Colors.white :Colors.white70,
                      CardChild: iconContent(icon: Icons.female, label: 'FEMALE')
                      
                    ),
                 
                )
              ],
            ),
          ),
          Expanded(
           child: ReusableCard(
             Colors: Colors.white,
             CardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             
             
              children: [
                Text('Height',style: IconTextStyle,),
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline:TextBaseline.alphabetic ,
                  children: [
                    Text(height.toString(),
                    style:numberTextStyle,
                    ),
                    Text('cm',style: IconTextStyle,)
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                     activeTrackColor: Colors.white,
                     inactiveTrackColor:Colors.grey,
                    thumbColor: Colors.pink,
                    overlayColor: Color(0x29EB1555),
                  
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30)
                  ),
                  child: Slider(value: height.toDouble(),
                  min: 120,
                  max: 240,
                  
                 
                   onChanged: (double newvalue){
                    print(newvalue);
                    setState(() {
                       height=newvalue.round();
                    });
                   
                  }),
                )
              ],
             ), onpress: () {  },
          ),
          ),
          Expanded(
           child: Row(
              children: [
                Expanded(
                child: ReusableCard(
                  Colors: ActiveCardColour,
                   CardChild:Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text('Weight',style:IconTextStyle ,),
                      Text(Weight.toString(),style: numberTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          RoundIconButton(
                            onPressed: (){
                              setState(() {
                                Weight--;
                              });
                            },
                            icon:FontAwesomeIcons.minus),
                        
                       SizedBox(
                        width: 15,
                       ),
                       RoundIconButton(
                        onPressed: (){
                          setState(() {
                            Weight++;
                          });
                        },
                        icon: FontAwesomeIcons.plus)
                       
                        ]
                      )
                    ],
                   ), onpress: () {  },
                 ),
               ),
                Expanded(
                 child: ReusableCard(
                    Colors: ActiveCardColour,
                    CardChild: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text('Age',style:IconTextStyle ,),
                      Text(Age.toString(),style: numberTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          RoundIconButton(
                            onPressed: (){
                              setState(() {
                                Age--;
                              });
                            },
                            icon:FontAwesomeIcons.minus),
                        
                       SizedBox(
                        width: 15,
                       ),
                       RoundIconButton(
                        onPressed: (){
                          setState(() {
                           Age++;
                          });
                        },
                        icon: FontAwesomeIcons.plus)
                       
                        ]
                      )
                    ],
                   ), onpress: () {  },
                 ),
               ),
              ]
                  ),
                ),
             
         
         BottomButton(text:'Calculate',
      onTap: (){
          CalculatorBrain cls=CalculatorBrain(
           height: height,weight: Weight
      );
           
            Navigator.push(context, MaterialPageRoute(builder:(context)=>ResultPage(

              bmiResult: cls.Calculatebmi(),
              resultText: cls.getResult(),
              intrerptation: cls.getInterptation(),
            ) ));
          }, 
        )
           ],
            ),
            );
  }
}


