import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyfutureBuilder extends StatelessWidget {
  Future<String> callAPI() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    var response = await http.get(url);
    List dataList = jsonDecode(response.body);
    for (int i = 0; i < dataList.length; i++) {
      //list.add(JsonData.fromJson(dataList[i]));
      // print("Data=${list[i]}");
      // photoList.add(JsonPhotos.fromJson(dataList[i]));
    }
    return "Creative";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: callAPI(),
      builder: (context, snapshot) {
        if (ConnectionState.waiting == snapshot.connectionState) {
          return CircularProgressIndicator();
        }
        if (snapshot.hasData) {
          return Center(child: Text("${snapshot.data}"));
        }
        return Text("===");
      },
    ));
  }
}
