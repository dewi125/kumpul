import 'package:flutermobile/lingkaran.dart';
import 'package:flutermobile/persegi.dart';
import 'package:flutter/material.dart';
import 'package:flutermobile/profile.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Home"),
      ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text("Pilih untuk mulai menghitung luas persegi"),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> persegi()));

          },
           child: Text("Rumus PERSEGI")
          ),
          Text("Pilih untuk mulai menghitung luas lingkaran"),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> lingkaran()));

          },
           child: Text("Rumus LINGKARAN")
          ),
          Text("Pilih untuk melihat profil"),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> ProfileApp()));

          },
           child: Text("PROFIL")
          )
        ],
        ),
        );
  }
}