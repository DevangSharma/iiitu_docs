import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class SemesterPage extends StatefulWidget {
  String branch;
  String semester;
  SemesterPage(this.branch, this.semester);

  @override
  State<SemesterPage> createState() => _SemesterPageState();
}

class _SemesterPageState extends State<SemesterPage> {
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
      body: FutureBuilder(
          future: FirebaseStorage.instance
              .ref()
              .child(widget.branch)
              .child(widget.semester)
              .listAll(),
          builder: (context, AsyncSnapshot<ListResult> snapshot) {
            // ListResult data = snapshot.data;

            if (snapshot.hasData) {
              return (snapshot.data!.items.isEmpty)
                  ? Center(
                      child: Text(
                        "No data available",
                        style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                      ),
                    )
                  : ListView.builder(
                      itemCount: snapshot.data!.items.length,
                      itemBuilder: (context, index) =>
                          Text("${snapshot.data!.items[index].name}"));
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
