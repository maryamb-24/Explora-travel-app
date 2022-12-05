import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/screens/signup_screen.dart';
import 'package:flutter_auth_ui/homepage.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = new TextEditingController();

  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xff0c3358),
          title: const Text(
            "Log In",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff),
                fontSize: 25),
          ),
        ),
        drawer: DrawerCodeOnly(),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                width: 290,
                height: 400,
                child: Image.asset(
                  "assets/images/login1.jpg",
                  color: null,
                  fit: BoxFit.cover,
                  colorBlendMode: BlendMode.dstATop,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.remove_red_eye),
                    // suffixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 11),
              ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: email.text, password: password.text)
                      .then((value) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }).onError((error, stackTrace) {
                    print("Invalid Password");
                    print(error);
                  });
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  primary: Color(0xff0c3358),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => signup()));
                  },
                  child: Text(
                    "Don't have an account? Create one.",
                    style: TextStyle(color: Color(0xff0c3358), fontSize: 12),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
