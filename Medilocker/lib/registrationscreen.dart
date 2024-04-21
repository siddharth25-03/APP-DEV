import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

enum Profession{
  doctor,
  patient,
}

class Registrationscreen extends StatefulWidget {
  const Registrationscreen({super.key});

  @override
  State<Registrationscreen> createState() => _RegistrationscreenState();
}

class _RegistrationscreenState extends State<Registrationscreen> {

  Profession? selectedpath;
  String typeofaccount='User!';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            textAlign: TextAlign.center,
            'Choose Account Type',
            style: TextStyle(
              color: Color(0xFF014037),
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(// of the doctor image
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedpath=Profession.doctor;
                      typeofaccount='Doctor!';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedpath==Profession.doctor ? Color(0xFF013E36) : Colors.white,
                          width: 2.5,
                        )
                    ),
                    margin: EdgeInsets.only(right: 10,left: 10,bottom: 30),
                    child: Image(
                      image: AssetImage('images/doc.jpg'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded( // of the patient image
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedpath=Profession.patient;
                      typeofaccount='Patient!';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedpath==Profession.patient ? Color(0xFF013E36) : Colors.white,
                          width: 2.5,
                        )
                    ),
                    margin: EdgeInsets.only(right: 10,left: 10,bottom: 40),
                    child: Image(
                      image: AssetImage('images/pat.jpg'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Hello $typeofaccount\nPlease fill out the form below to get started',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Color(0xFF014037),
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
              onChanged: (value) {},
              decoration: kinputdecor,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
              onChanged: (value) {


              },
              decoration: kinputdecor.copyWith(
                  hintText: 'Enter your password',
                  prefixIcon: Icon(
                    Icons.password_sharp,
                    size: 26,
                  )),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Container(
              height: 60,
              child: Material(
                elevation: 10.0,
                color: Color(0xFF02B272),
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'mainscreen');
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'REGISTER NOW',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}