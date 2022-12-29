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
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            // color: Colors.grey,
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                    left: 20,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Add new ToDo item',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20, right: 20),
                // ignore: sort_child_properties_last
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 45),
                  
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tdBlue,
                    minimumSize: Size(50, 50),
                    elevation: 10,
                  
                  ),
                ),

                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
