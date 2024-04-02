import 'package:flutter/material.dart';
import 'package:quizzler/quizbrain.dart';
import 'question.dart';
import 'quizbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Quizbrain quizb = Quizbrain();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void red(){
    scorekeeper.add(
      Icon(
        Icons.close,
        color: Colors.red,
        size: 50,
      ),
    );
  }
  void green(){
    scorekeeper.add(
      Icon(
        Icons.check,
        color: Colors.green,size: 50,
      ),
    );
  }
  List<Widget> scorekeeper= [];
  // List<String> questions= [
  //   'The Earth is the largest planet in the solar system.',
  //   'Oxygen is the most abundant element in the Earth\'s atmosphere.',
  //   'The Great Wall of China can be seen from space with the naked eye.'
  // ];
  // List<bool>answers=[
  //   false,
  //   true,
  //   false
  // ];
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    quizb.getquestionname(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 120,
                child: Expanded(
                    child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                  ),
                  onPressed: (){
                    bool correctanswer=true;
                    setState(() {
                      quizb.questionnumber++;
                      if(quizb.alert()==1){
                        Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();
                      }
                      else if(correctanswer==quizb.getquestionans()){
                        green();
                      }
                      else{
                        red();
                      }

                    });
                  },
                  child: Text(
                    'TRUE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50
                    )
                  ),
                )),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height:120 ,
                child: Expanded(child: TextButton(

                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                  ),
                  onPressed: (){
                    bool correctanswer=false;
                    setState(() {
                      quizb.questionnumber++;
                      if(quizb.alert()==1){
                        Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();
                      }
                      else if(correctanswer==quizb.getquestionans()){
                        green();
                      }
                      else{
                        red();
                      }

                    });

                  },
                  child: Text(
                      'FALSE',
                      style: TextStyle(
                          color: Colors.white,
                        fontSize: 50
                      )
                  ),
                )),
              ),
              Row(
                children: scorekeeper
              )
            ],
          ),
        )
      ),
    );
  }
}


