import 'dart:convert';

import 'package:api_calling_ecommerce_site/DataModels/DataModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(home: API_Practice()));
}

class API_Practice extends StatefulWidget {
  const API_Practice({super.key});

  @override
  State<API_Practice> createState() => _API_PracticeState();
}

class _API_PracticeState extends State<API_Practice> {
  List<JsonData> list = [];
  List<JsonPhotos> photoList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: photoList.isNotEmpty
            ? ListView.builder(
                itemCount: photoList.length,
                itemBuilder: (context, index) {
                  return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                        backgroundImage: NetworkImage(photoList[index].url),),
                        title: Text(photoList[index].title),));
                },
              )
            : const Center(child: CircularProgressIndicator()));
  }

  Future<void> callAPI() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    var response = await http.get(url);
    List dataList = jsonDecode(response.body);
    for (int i = 0; i < dataList.length; i++) {
      //list.add(JsonData.fromJson(dataList[i]));
      // print("Data=${list[i]}");
      photoList.add(JsonPhotos.fromJson(dataList[i]));
    }
    setState(() {});
  }
}
