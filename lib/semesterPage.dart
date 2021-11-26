import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

listExample() async {
  ListResult result = await FirebaseStorage.instance.ref().listAll();

  result.items.forEach((ref) {
    print('Found file: $ref');
  });

  result.prefixes.forEach((ref) {
    print('Found directory: $ref');
  });
}

class SemesterPage extends StatefulWidget {
  String branch;
  String semester;
  SemesterPage(this.branch, this.semester);

  @override
  State<SemesterPage> createState() => _SemesterPageState();
}

class _SemesterPageState extends State<SemesterPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    listExample();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.branch,
          style: TextStyle(fontSize: 28),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Available"),
            ],
          ),
        ),
      ),
    );
  }
}
