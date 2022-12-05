import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_auth_ui/book.dart';
import 'package:flutter_auth_ui/model/travel.dart';

class InsertData extends StatefulWidget {
  const InsertData({Key? key}) : super(key: key);

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  // final Detail detail;
  final userNameController = TextEditingController();
  final userAgeController = TextEditingController();
  final userMembersController = TextEditingController();
  final userBookingController = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('details');
  }

  @override
  Widget build(BuildContext context) {
    final travel = ModalRoute.of(context)!.settings.arguments as Travel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Booking Page',
          style: TextStyle(color: Color(0xffffffff)),
        ),
        backgroundColor: const Color(0xff0c3358),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Enter Details to Book Your Package to ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              Text(travel.name),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: userNameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Name',
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: userAgeController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Age',
                    hintText: 'Enter Your Age',
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: travel.name,
                    enabled: false,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: userMembersController,
                  decoration: InputDecoration(
                    hintText: '4',
                    labelText: 'No of Members',
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: userBookingController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Date of Visit',
                    hintText: '19-12-22',
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              MaterialButton(
                onPressed: () {
                  Map<String, String> details = {
                    'name': userNameController.text,
                    'age': userAgeController.text,
                    'member': userMembersController.text,
                    'booking': userBookingController.text,
                    'place': travel.name,
                  };

                  dbRef.push().set(details);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new BookPack()));
                },
                child: const Text('Book Package'),
                color: Color(0xff0c3358),
                textColor: Colors.white,
                minWidth: 300,
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
