import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medilocker/mainscreen.dart';
import 'Reminder.dart';
import 'profile_page.dart';

class Mainscreen extends StatefulWidget {
  Mainscreen({this.Email});
  String? Email;

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int currentindex=1;
  Color color=Colors.black;
  @override
  Widget build(BuildContext context) {
    List<Widget> screens =[
      Alarmpage(),
      Homepage(),
      Prescriptions(),
      Profilepage(email: widget.Email),
    ];
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          setState(() {
            currentindex=value;
          });
        },
        currentIndex: currentindex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF00BE78),
        selectedFontSize: 15,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.alarm_sharp,
                color: currentindex==0 ? Color(0xFF00BE78) : Colors.black,
              ),
              label: 'Reminder'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.home,
                color: currentindex==1 ? Color(0xFF00BE78) : Colors.black,
              ),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.file_copy,
              color: currentindex==2 ? Color(0xFF00BE78) : Colors.black,
            ),
              label: 'Prescriptions'

          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.account_circle_rounded,
              color: currentindex==3 ? Color(0xFF00BE78) : Colors.black,
            ),
              label: 'Profile',
          ),
        ],

      ),
    );
  }
}

//----------------------------------------------------------------------------------------------------
//HOMEPAGE

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [],);
  }
}



//----------------------------------------------------------------------------------------------------
//SEARCHPAGE

class Prescriptions extends StatefulWidget {
  const Prescriptions({super.key});

  @override
  State<Prescriptions> createState() => _PrescriptionsState();
}

class _PrescriptionsState extends State<Prescriptions> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}







