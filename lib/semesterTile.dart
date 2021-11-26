import 'package:flutter/material.dart';
import 'package:iiitu_docs/semesterPage.dart';

class SemesterTile extends StatelessWidget {
  String semester;
  String branch;

  SemesterTile(this.branch, this.semester);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: Card(
        elevation: 5,
        child: ListTile(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SemesterPage(branch, semester))),
          title: Text(
            "$semester Semester",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800]),
          ),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
      ),
    );
  }
}
