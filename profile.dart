import 'package:flutter/material.dart';

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color((0xFF3498DB)),
        appBar: AppBar(
          title: Text("Halaman Profile"),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/img/enisa.jpg'),
              ),
              Text(
                'Enisa',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Color.fromARGB(255, 94, 226, 209),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.blue.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.blue.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  title: Text(
                    '083151892128',
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
               Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'enisadesi16@gmail.com',
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                child: Text("Kembali"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
