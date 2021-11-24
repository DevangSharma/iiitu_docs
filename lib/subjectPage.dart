import 'package:flutter/material.dart';
import 'package:iiitu_docs/semesterTile.dart';

class SubjectPage extends StatelessWidget {
  String branch;

  SubjectPage(this.branch);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          branch,
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
              SemesterTile("1st"),
              SemesterTile("2nd"),
              SemesterTile("3rd"),
              SemesterTile("4th"),
              SemesterTile("5th"),
              SemesterTile("6th"),
              SemesterTile("7th"),
              SemesterTile("8th"),
            ],
          ),
        ),
      ),
    );
  }
}
