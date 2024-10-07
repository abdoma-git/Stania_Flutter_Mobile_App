import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeageState();
}

class _HomeageState extends State<HomePage> {

  Future getData() async{

    var url = "http://localhost/FlutterStania/getData.php";
    var url2 = "http://192.168.1.80/FlutterStania/getData.php";
    var res = await http.put(Uri.parse(url2));

    if (res.statusCode == 200){
      var red = json.decode(res.body); 
      print(red);
    }


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (cts, i){
          return Container( 
            color: Colors.blue[300],
            child: const ListTile(
              title: Text("Username"),
              subtitle: Text("Joueur N 10"),
              leading: CircleAvatar(
                radius: 30,
                child: Text("MA"),
              ),
              trailing: Text("Real Madrid"),
            )
          );
        })
    );
  }
}