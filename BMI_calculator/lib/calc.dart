import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter/rendering.dart';
import 'Result_page.dart';
import 'iconcontent.dart';
import 'reuablecard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  Gender? selectedgender;
  int height=180;
  int weight=40;
  int age=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Center(
            child: Text(
              'BMI CALCULATOR',
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedgender = Gender.male;
                        });
                      },
                      child: Resuable_card(
                          colour: selectedgender==Gender.male ? kactivecardcolour : kinactivecardcolour,
                          cardchild:Iconcontent(FontAwesomeIcons.mars,'MALE'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedgender = Gender.female;
                        });
                      },
                      child: Resuable_card(
                        colour: selectedgender==Gender.female ? kactivecardcolour : kinactivecardcolour,
                        cardchild:Iconcontent(FontAwesomeIcons.venus,'FEMALE'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Resuable_card(
                        colour: kboxbackcolour,
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ktxt('HEIGHT'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  height.toString(),
                                  style: ktextstyle,
                                ),
                                ktxt('cm'), //for the cm
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor:Colors.white,
                                  thumbColor: Color(0xFFF73057),
                                  inactiveTrackColor: CupertinoColors.systemGrey,
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                                overlayColor: Color(0xFFF73057).withOpacity(0.12),
                                overlayShape: RoundSliderOverlayShape(overlayRadius: 30)
                              ),
                              child: Slider(
                                  value: height.toDouble(),
                                  min: 120,
                                  max: 220,
                                  onChanged: (double newvalue){
                                    setState(() {
                                      height=newvalue.round();
                                    });
                              },
                              ),
                            )
                          ],
                        ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Resuable_card(
                        colour: kboxbackcolour,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ktxt('WEIGHT'),
                          Text(
                            weight.toString(),
                            style: ktextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconbutton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(width:15),
                              RoundIconbutton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Resuable_card(colour: kboxbackcolour,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ktxt('AGE'),
                          Text(
                            age.toString(),
                            style: ktextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconbutton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(width:15),
                              RoundIconbutton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),

                        ],
                      ),),

                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                CalculatorBrain calc= CalculatorBrain(weight: weight, height: height);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Result_page(
                    result: calc.getresult(),
                    interpretation: calc.getinterpretatiton(),
                    bmi: calc.calcbmi(),
                  ),
                  ),
                );
              },
              child: Container(
                  height: 80,
                  color: Color(0xFFF73057),
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text(
                      'CALCULATE',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            )
          ],
        ),
    );
  }
}

class RoundIconbutton extends StatelessWidget {
  RoundIconbutton({required this.icon,required this.onPressed});
  Function() onPressed;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),


    );
  }
}




