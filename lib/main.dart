import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/screens/screens.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_auth_ui/model/travel.dart';
import 'package:flutter_auth_ui/homepage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyC-4H82oAJ1y5MiG2E-WEKNjQsjELlkFcs",
    authDomain: "flutter-travel-app-2b046.firebaseapp.com",
    databaseURL:
        "https://flutter-travel-app-2b046-default-rtdb.asia-southeast1.firebasedatabase.app",
    projectId: "flutter-travel-app-2b046",
    storageBucket: "flutter-travel-app-2b046.appspot.com",
    messagingSenderId: "466832606382",
    appId: "1:466832606382:web:f205552709a969d98c193f",
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PreviewPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PreviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 375.0,
            height: 700.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              child: Image.asset(
                "assets/images/homepage.png",
                color: null,
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.dstATop,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: FloatingActionButton.extended(
              label: Text('Get Started'), // <-- Text
              backgroundColor: Color(0xff0c3358),
              icon: Icon(
                // <-- Icon
                Icons.arrow_forward,
                size: 20.0,
              ),
              onPressed: () {
                _navigateToNextScreen(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    final text = ' Login for better experiences';
    final snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomePage()));
  }
}
