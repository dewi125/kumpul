import 'package:flutter/material.dart';

class lingkaran extends StatefulWidget {
  const lingkaran({Key? key}) : super(key: key);

  @override
  State<lingkaran> createState() => _LingkaranState();
}

class _LingkaranState extends State<lingkaran> {
  TextEditingController _controllerJariJari = TextEditingController();
  double _luas = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Lingkaran"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controllerJariJari,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Masukkan Jari-Jari'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _hitungLuas();
              },
              child: Text('Hitung Luas'),
            ),
            SizedBox(height: 20.0),
            Text('Luas Lingkaran: $_luas'),
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
    double jariJari = double.tryParse(_controllerJariJari.text) ?? 0.0;
    double luas = 3.14 * jariJari * jariJari;

    setState(() {
      _luas = luas;
    });
  }
}
