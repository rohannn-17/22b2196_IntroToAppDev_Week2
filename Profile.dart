import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 158, 148, 239),
        centerTitle: true,
        title: const Text(
          'Budget Tracker',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 158, 148, 239),
      body: Center(
        child: ListView(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 158, 148, 239),
                    child: Icon(
                      Icons.person,
                      size: 150,
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  )
                ],
              ),
              const SizedBox(height: 120),
              const Text(
                'hey rohan,',
                style: TextStyle(fontFamily: 'Marker', fontSize: 27),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'welcome back!!!',
                style: TextStyle(fontFamily: 'Marker', fontSize: 27),
              ),
              SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Username :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Rohan Badgujar',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                onPressed: () {
                  dynamic result = Navigator.pushNamed(context, '/Budget');
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Track Budget',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
