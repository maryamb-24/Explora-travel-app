import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/most_popular.dart';
import 'package:flutter_auth_ui/travel_blog.dart';
import 'package:flutter_auth_ui/policies.dart';
import 'package:flutter_auth_ui/logout.dart';
import 'package:flutter_auth_ui/screens/login_screen.dart';
import 'package:flutter_auth_ui/screens/signup_screen.dart';
import 'package:flutter_auth_ui/widgets/activities.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'EXPLORA',
          style: TextStyle(color: Color(0xffffffff)),
        ),
        backgroundColor: const Color(0xff0c3358),
      ),
      drawer: DrawerCodeOnly(),
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.all(18)),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Destinations',
                  style: TextStyle(
                    height: 1.6666666666666667,
                    fontSize: 24.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 12, 51, 88),
                  ),
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.search, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  primary: Color(0xff0c3358),
                  onPrimary: Colors.blue,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Places',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(height: 250, child: TravelBlog()),
          Padding(
            padding: const EdgeInsets.only(left: 17, bottom: 17, right: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Most Popular',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(height: 270, child: MostPopular()),
          Padding(
            padding: const EdgeInsets.all(17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Activities',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            child: ActivitiesBlog(),
          )
        ],
      ),
    );
  }
}

class DrawerCodeOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff0c3358),
            ),
            child: Icon(
              Icons.person_pin,
              color: Colors.white,
              size: 70,
              textDirection: TextDirection.ltr,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new HomePage()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: const Text('Sign up'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => signup()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: const Text('Login'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Login()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: const Text('Log out'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Logout()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.policy,
            ),
            title: const Text('Policies'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new policies()));
            },
          ),
        ],
      ),
    );
  }
}
