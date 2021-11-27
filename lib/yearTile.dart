import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:iiitu_docs/pdfView.dart';

class YearTile extends StatelessWidget {
  final String heading, title, path;
  final int id;

  YearTile(this.id, this.title, this.path, this.heading);

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

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PDFView(heading + " " + title, url)));
          },
          leading: Text(
            "$id",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
      ),
    );
  }
}
