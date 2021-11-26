import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:iiitu_docs/yearTile.dart';

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
          "${widget.branch} ${widget.semester} Semester",
          style: TextStyle(fontSize: 24),
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
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      child: ListView.builder(
                        itemCount: snapshot.data!.items.length,
                        itemBuilder: (context, index) => YearTile(
                          index + 1,
                          snapshot.data!.items[index].name,
                          snapshot.data!.items[index].fullPath,
                          widget.branch + " " + widget.semester + " Semester ",
                        ),
                      ),
                    );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
