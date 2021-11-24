import 'package:flutter/material.dart';

class SemesterTile extends StatelessWidget {
  String semester;

  SemesterTile(this.semester);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: Card(
        elevation: 5,
        child: ListTile(
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
