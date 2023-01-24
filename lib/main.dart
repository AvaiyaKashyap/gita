import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: bhagvad(),
  ));
}
class bhagvad extends StatefulWidget {
  const bhagvad({Key? key}) : super(key: key);

  @override
  State<bhagvad> createState() => _bhagvadState();
}

class _bhagvadState extends State<bhagvad> {
  List finalResult = [];
  String jsonData ='' ;
  loadJson() async{
    jsonData = await rootBundle.loadString("assets/jsonfile/bhagvadgita.json");
    List decodedData = jsonDecode(jsonData);
    setState(() {
      finalResult = decodedData;
    });

  }
  @override
  void initState() {
    super.initState();
    loadJson();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
        itemCount: finalResult.length,
          itemBuilder: (context, i){
        return Container(
          //
          alignment: Alignment.center,
          child: Text("${finalResult[i]['description']}"),
        );
      })
    );
  }
}
