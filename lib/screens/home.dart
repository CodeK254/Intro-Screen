// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var data = [];

  List snap = [];

  Future _getData() async {
    var uri = 'https://karu-mart.000webhostapp.com/Contacts/contacts.php';

    var response = await http.get(Uri.parse(uri));

    setState(() {
      data = jsonDecode(response.body);
    });
    print(data);

    return data;
  }

  @override

  void initState() {
    super.initState();

    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Marwa"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index){
          return ListTile(
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=> )
              );
            },
            title: Row(
              children: [
                Text(
                  data[index]['firstname'],
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  data[index]['lastname'],
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            subtitle: Text(
              data[index]['phone'],
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            trailing: GestureDetector(
              onTap: (){},
              child: Icon(
                Icons.error_outline_rounded,
                color: Colors.orange,
              ),
            ),
          );
        }
      )
    );
  }
}