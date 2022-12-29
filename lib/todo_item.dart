// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:mytodo/constants/colors.dart';
import 'dart:developer' as devtools show log;

import 'package:mytodo/model/todo.dart';

class ToDoItem extends StatelessWidget {
  final Todo note;
  const ToDoItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 20,
          ),
          onTap: () {
            devtools.log('Clicked on the List title');
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          tileColor: Colors.white,
          leading: Icon(
            note.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: tdBlue,
          ),
          title: Text(
            note.todoText,
            // 'Check Mail',
            style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: note.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: tdRed,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              color: Colors.white,
              iconSize: 18,
              icon: Icon(Icons.delete),
              onPressed: () {
                // Navigator.of(context).pop();
                devtools.log('Clicked on delete');
              },
            ),
          )),
    );
  }
}
