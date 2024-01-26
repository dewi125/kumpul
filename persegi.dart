import 'package:flutter/material.dart';

class persegi extends StatefulWidget {
  const persegi({Key? key}) : super(key: key);

  @override
  State<persegi> createState() => _PersegiState();
}

class _PersegiState extends State<persegi> {
  TextEditingController _controllerPanjang = TextEditingController();
  TextEditingController _controllerLebar = TextEditingController();
  double _luas = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Persegi"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controllerPanjang,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Masukkan Panjang'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _controllerLebar,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Masukkan Lebar'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _hitungLuas();
              },
              child: Text('Hitung Luas'),
            ),
            SizedBox(height: 20.0),
            Text('Luas Persegi Panjang: $_luas'),
            SizedBox(height: 20.0),
            ElevatedButton(
              child: Text("Kembali"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void _hitungLuas() {
    double panjang = double.tryParse(_controllerPanjang.text) ?? 0.0;
    double lebar = double.tryParse(_controllerLebar.text) ?? 0.0;
    double luas = panjang * lebar;

    setState(() {
      _luas = luas;
    });
  }
}
