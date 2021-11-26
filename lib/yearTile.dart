import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:iiitu_docs/pdfView.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class YearTile extends StatelessWidget {
  String heading;
  String title;
  int id;
  String path;

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

            SfPdfViewer.network(url);
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
