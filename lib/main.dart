import 'package:flutter/material.dart';
import 'package:iiitu_docs/subjectTile.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("IIITU Docs"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SubjectTile(Icons.computer_rounded, "CSE"),
              SubjectTile(Icons.laptop_mac_rounded, "IT"),
              SubjectTile(Icons.electrical_services_sharp, "ECE")
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
