import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class YearTile extends StatelessWidget {
  String title;
  int id;
  String path;

  YearTile(this.id, this.title, this.path);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: Card(
        elevation: 5,
        child: ListTile(
          onTap: () async {
            print(path);

            String url = await FirebaseStorage.instance
                .ref()
                .child(path)
                .getDownloadURL();

            print(url);
          },
          leading: Text(
            "$id",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800]),
          ),
          title: Text(
            title,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800]),
          ),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
      ),
    );
    ;
  }
}
