import 'package:flutter/material.dart';
import 'package:iiitu_docs/semesterPage.dart';

class SemesterTile extends StatelessWidget {
  final String semester, branch;

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
          leading: Icon(Icons.pending_actions_outlined),
          title: Text(
            "$semester Semester",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
      ),
    );
  }
}
