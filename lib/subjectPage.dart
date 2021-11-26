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
              SemesterTile(branch, "1st"),
              SemesterTile(branch, "2nd"),
              SemesterTile(branch, "3rd"),
              SemesterTile(branch, "4th"),
              SemesterTile(branch, "5th"),
              SemesterTile(branch, "6th"),
              SemesterTile(branch, "7th"),
              SemesterTile(branch, "8th"),
            ],
          ),
        ),
      ),
    );
  }
}
