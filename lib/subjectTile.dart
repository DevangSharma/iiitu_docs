import 'package:flutter/material.dart';

class SubjectTile extends StatelessWidget {
  IconData icon;
  String title;

  SubjectTile(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Card(
        elevation: 8,
        child: Row(
          children: [
            Icon(
              icon,
              size: 104,
              color: Colors.grey[800],
            ),
            Container(
              width: 24,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 56,
                  color: Colors.grey[800]),
            )
          ],
        ),
      ),
    );
  }
}
