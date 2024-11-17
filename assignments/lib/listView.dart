import 'package:flutter/material.dart';

class listView extends StatefulWidget {
  const listView({super.key});

  @override
  State<listView> createState() => _listViewState();
}



class _listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> peoples = [
      {"name" : "ali" , "designation" : "designer" , "image" : "assets/images/pr1.png"},
      {"name" : "ammar" , "designation" : "Developer" , "image" : "assets/images/pr2.jpg"},
      {"name" : "akram" , "designation" : "manager" , "image" : "assets/images/pr3.jpeg"},
      {"name" : "asif" , "designation" : "marketer" , "image" : "assets/images/pr4.jpg"},
      {"name" : "ali" , "designation" : "designer" , "image" : "assets/images/pr1.png"},
      {"name" : "ammar" , "designation" : "Developer" , "image" : "assets/images/pr2.jpg"},
      {"name" : "akram" , "designation" : "manager" , "image" : "assets/images/pr3.jpeg"},
      {"name" : "asif" , "designation" : "marketer" , "image" : "assets/images/pr4.jpg"},
      {"name" : "ali" , "designation" : "designer" , "image" : "assets/images/pr1.png"},
      {"name" : "ammar" , "designation" : "Developer" , "image" : "assets/images/pr2.jpg"},
      {"name" : "akram" , "designation" : "manager" , "image" : "assets/images/pr3.jpeg"},
      {"name" : "asif" , "designation" : "marketer" , "image" : "assets/images/pr4.jpg"},
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: peoples.length,
        itemBuilder: (context , index)
        {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(peoples[index]["image"]!),
            ),
            title: Text(peoples[index]["name"]!),
            subtitle: Text(peoples[index]["designation"]!),
          );
        },
      ),
    );
  }
}
