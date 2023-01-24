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
  }
  @override
  void initState() {
    super.initState();
    loadJson();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
