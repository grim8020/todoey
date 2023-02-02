import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.lightBlueAccent),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  //add task to the list
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
                child: Text(
                  'Add',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ]),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
