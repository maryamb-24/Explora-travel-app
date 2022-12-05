import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/homepage.dart';

class BookPack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: DrawerCodeOnly(),
        body: SafeArea(
          child: Column(children: [
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
            SizedBox(height: 20),
            Center(
                child: Container(
              child: Text(
                "Your Package is Booked",
                style: TextStyle(color: Color(0xff0870a1), fontSize: 24),
              ),
            )),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(20),
              child: FloatingActionButton.extended(
                label: Text('Back To Home'), // <-- Text
                backgroundColor: Color(0xff0c3358),
                icon: Icon(
                  // <-- Icon
                  Icons.arrow_forward,
                  size: 20.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new HomePage(),
                    ),
                  );
                },
              ),
            ),
          ]),
        ));
  }
}
