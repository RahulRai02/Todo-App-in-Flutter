// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mytodo/constants/colors.dart';
import 'package:mytodo/model/todo.dart';
import 'package:mytodo/search_box.dart';
import 'package:mytodo/todo_item.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final todoListStat = Todo.todoListItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
          backgroundColor: tdBGColor,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                color: tdBlack,
                size: 30,
              ),
              Container(
                height: 40,
                width: 40,
                child: ClipRRect(
                  child: Image.asset('assets/images/rai.jpg'),
                  borderRadius: BorderRadius.circular(40),
                ),
              )
            ],
          )),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 50,
                      bottom: 20,
                    ),
                    child: Text(
                      'All ToDos',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  for (Todo todo in todoListStat)
                    ToDoItem(
                      note: todo,
                    ),

                  // ToDoItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
