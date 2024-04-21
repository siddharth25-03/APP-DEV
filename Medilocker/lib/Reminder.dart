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
        frequency: 'Edit Frequency by tapping',
        selectedTime: selectedTime,
        remindcontext: 'Edit Context by tapping',
      ));
    });
  }

  void toggleSwitch(bool value, int index) {
    setState(() {
      reminders[index].isSwitched = value;
    });
  }

  void updateReminder(int index, String newFrequency, String newContext) {
    setState(() {
      reminders[index].frequency = newFrequency;
      reminders[index].remindcontext = newContext;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'My Reminders',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Color(0xFF00BE78),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
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
        label: Text(
          'Add Reminder',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        icon: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(reminders.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      String newFrequency = reminders[index].frequency;
                      String newContext = reminders[index].remindcontext;

                      return AlertDialog(
                        title: Text(
                          "Edit Reminder",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              decoration: InputDecoration(labelText: "Frequency"),
                              onChanged: (value) {
                                newFrequency = value.toUpperCase(); // Convert to uppercase
                              },
                            ),
                            TextField(
                              decoration: InputDecoration(labelText: "Reminder Context"),
                              onChanged: (value) {
                                newContext = value;
                              },
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              updateReminder(index, newFrequency, newContext);
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Save",
                              style: TextStyle(color: Color(0xFF00BE78)),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                reminders.removeAt(index);
                              });
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Delete",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            reminders[index].frequency,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey[800],
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '${reminders[index].selectedTime.format(context)}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Color(0xFF00BE78),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            reminders[index].remindcontext,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      Switch(
                        activeColor: Color(0xFF00BE78),
                        value: reminders[index].isSwitched,
                        onChanged: (value) {
                          toggleSwitch(value, index);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
