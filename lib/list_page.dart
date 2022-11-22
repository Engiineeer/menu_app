import 'package:flutter/material.dart';

import 'package:menu_app/menu_model.dart';

class Listpage extends StatelessWidget {
  Listpage({super.key});

  List<Food> menu = [
    Food(name: "rabbit", image: "assets/rabbit.png"),
    Food(name: "elon", image: "assets/ellon.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("menu", style: TextStyle(fontSize: 26)))),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) => Card(
          shadowColor: Colors.grey,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  menu[index].name,
                  style: TextStyle(fontSize: 26),
                ),
              ),
              Spacer(),
              Image.asset(
                menu[index].image,
                height: 100,
                width: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
