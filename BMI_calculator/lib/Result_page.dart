import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class Result_page extends StatelessWidget {
  Result_page({required this.result,required this.interpretation,required this.bmi});
  String result;
  String interpretation;
  String bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
        title: Container(
          margin: EdgeInsets.only(left: 50),
          child: Text(
            'BMI CALCULATOR'
          ),
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Your Results',
          style: kresultpagestyle,),
          Expanded(
              child:Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF1B1C2C),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        result.toUpperCase(),
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF27D372)
                      ),
                    ),

                    Text(
                      bmi,
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w900
                    ),
                    ),

                    Text(
                        interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 23,
                      ),
                    )
                  ],
                ),
              ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
                height: 80,
                color: Color(0xFFF73057),

                child: Center(
                  child: Text(
                    'RE-CALCULATE',
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
