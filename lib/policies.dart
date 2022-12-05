import 'homepage.dart';
import 'package:flutter/material.dart';

class policies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Poly(),
    );
  }
}

class Poly extends StatefulWidget {
  @override
  _PolyState createState() => _PolyState();
}

class _PolyState extends State<Poly> {
  List<String> str = [
    "Explora provides Visa assistance only, Visa Approval is at the discretion of Consulate.",
    "Visa Disclaimer : Please note that the final decision regarding a visa application rests solely with the respective Embassy/Consulate.",
    "To travel to any international destination, your passport must have a minimum validity of 06 months from your planned date of return.",
    "Do check your flight status/schedule 24 hours before the scheduled flight departure, since airline schedules are subject to change without notice."
        "While entering passenger names during the booking process, do ensure that they exactly match the names on the travel documents (e.g. passport) that you will be carrying for the trip.",
    "Explora officials or representatives will NEVER ask you for your personal information i.e. your credit/debit card details, passwords, PIN, CVV, OTP etc. Please do not share these details with anyone over phone, SMS, Whatsapp, email or any other source."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerCodeOnly(),
        appBar: new AppBar(
            title: new Text('Policies'),
            backgroundColor: const Color(0xff0c3358)),
        body: ListView(
          padding: EdgeInsets.all(18),
          children: [
            Column(
              children: str.map((strone) {
                return Row(children: [
                  Text(
                    "\u2022",
                    style: TextStyle(fontSize: 40, color: Color(0xff0c3358)),
                  ), //bullet text
                  SizedBox(
                    width: 10,
                  ), //space between bullet and text
                  Expanded(
                    child: Text(
                      strone,
                      style: TextStyle(fontSize: 20),
                    ), //text
                  )
                ]);
              }).toList(),
            ),
          ],
        ));
  }
}
