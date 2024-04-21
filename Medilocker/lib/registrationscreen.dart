import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

enum Profession {
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
  String typeofaccount = 'User!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Choose Account Type',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF014037),
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedpath = Profession.doctor;
                      typeofaccount = 'Doctor!';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedpath == Profession.doctor ? Color(0xFF013E36) : Colors.white,
                        width: 2.5,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        height: 150,
                        image: AssetImage('images/doc.jpg'),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedpath = Profession.patient;
                      typeofaccount = 'Patient!';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedpath == Profession.patient ? Color(0xFF013E36) : Colors.white,
                        width: 2.5,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        height: 150,
                        image: AssetImage('images/pat.jpg'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Hello $typeofaccount\nPlease fill out the form below to get started',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF014037),
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
                onChanged: (value) {},
                decoration: kinputdecor.copyWith(
                  hintText: 'Enter your password',
                  prefixIcon: Icon(
                    Icons.password_sharp,
                    size: 26,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
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
      ),
    );
  }
}
