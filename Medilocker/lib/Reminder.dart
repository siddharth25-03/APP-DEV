import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reminder {
  String frequency;
  TimeOfDay selectedTime;
  String remindcontext;
  bool isSwitched;
  Reminder({
    required this.frequency,
    required this.selectedTime,
    required this.remindcontext,
    this.isSwitched = true,
  });
}

class Alarmpage extends StatefulWidget {
  const Alarmpage({Key? key}) : super(key: key);

  @override
  State<Alarmpage> createState() => _AlarmpageState();
}

class _AlarmpageState extends State<Alarmpage> {
  List<Reminder> reminders = [];
  TimeOfDay selectedTime = TimeOfDay.now();

  void addReminder(TimeOfDay selectedTime) {
    setState(() {
      reminders.add(Reminder(
        frequency: 'Everyday',
        selectedTime: selectedTime,
        remindcontext: 'Take the painkiller',
      ));
    });
  }

  void toggleSwitch(bool value, int index) {
    setState(() {
      reminders[index].isSwitched = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xAAD1D1D1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'My Reminders',
          ),
        ),
        backgroundColor: Color(0xFF00BE78),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final TimeOfDay? timeOfDay = await showTimePicker(
            context: context,
            initialTime: selectedTime,
            initialEntryMode: TimePickerEntryMode.dial,
          );
          if (timeOfDay != null) {
            setState(() {
              selectedTime = timeOfDay;
              addReminder(selectedTime);
            });
          }
        },
        backgroundColor: Color(0xFF00BE78),
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(reminders.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            reminders[index].frequency,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                              color: Color(0xFF8F959D),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            '${reminders[index].selectedTime.format(context)}',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 35,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            reminders[index].remindcontext,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Switch(
                        activeColor: Color(0xFF00BE78),
                        value: reminders[index].isSwitched,
                        onChanged: (value) {
                          toggleSwitch(value, index);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
