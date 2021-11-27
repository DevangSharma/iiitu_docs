import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFView extends StatefulWidget {
  final String heading, url;

  PDFView(
    this.heading,
    this.url,
  );

  @override
  _PDFViewState createState() => _PDFViewState();
}

class _PDFViewState extends State<PDFView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.heading}}",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SfPdfViewer.network(widget.url),
    );
  }
}
