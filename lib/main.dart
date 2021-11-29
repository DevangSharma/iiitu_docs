import 'package:flutter/material.dart';
import 'package:iiitu_docs/subjectTile.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xff94753c)),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "IIITU Archives",
            style: TextStyle(fontSize: 22),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(32),
                child: Image(
                  image: AssetImage("assets/iiitulogo.png"),
                  height: 200,
                ),
              ),
              Text(
                "Portal for previous papers",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Container(
                height: 12,
              ),
              Divider(
                thickness: 2,
              ),
              SubjectTile(Icons.computer_rounded, "CSE"),
              SubjectTile(Icons.laptop_mac_rounded, "IT"),
              SubjectTile(Icons.electrical_services_sharp, "ECE")
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
