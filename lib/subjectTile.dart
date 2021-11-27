import 'package:flutter/material.dart';
import 'package:iiitu_docs/subjectPage.dart';

class SubjectTile extends StatelessWidget {
  final IconData icon;
  final String branch;

  SubjectTile(this.icon, this.branch);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: GestureDetector(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SubjectPage(branch))),
        child: Card(
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 64,
                  color: Colors.white,
                ),
                Container(
                  width: 24,
                ),
                Text(
                  branch,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
