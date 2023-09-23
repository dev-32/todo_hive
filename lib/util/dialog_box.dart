import 'package:flutter/material.dart';
import 'package:todo_hive/util/my_button.dart';

class DialogBox extends StatelessWidget {
  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task"
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(onPressed: onSave,text: "Save",),
                const SizedBox(width: 6,),
                MyButton(onPressed: onCancel,text: "Cancel",),

              ],
            )
          ],
        ),
      ),
    );
  }
}
