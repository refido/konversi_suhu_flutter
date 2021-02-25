import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tampilan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TampilanState();
  }
}

class TampilanState extends State<Tampilan> {
  TextEditingController suhu = new TextEditingController();
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  double _fahrenheit = 0;

  void hitungSuhu() {
    setState(() {
      _inputUser = double.parse(suhu.text);
      _kelvin = _inputUser + 273;
      _reamur = (4 / 5) * _inputUser;
      _fahrenheit = _inputUser * (9 / 5) + 32;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Konverter Suhu"),
      ),
      backgroundColor: Colors.white,
      body: new Container(
        child: new Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TextFormField(
                  controller: suhu,
                  decoration: new InputDecoration(
                      labelText: "Masukkan Suhu dalam Celcius"),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(
                      RegExp(r'[0-9+\.]'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 150.0,
                          bottom: 150.0,
                        ),
                        child: Column(
                          children: [Text("kelvin"), Text("$_kelvin")],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 150.0,
                          bottom: 150.0,
                        ),
                        child: Column(
                          children: [Text("reamur"), Text("$_reamur")],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 150.0,
                          bottom: 150.0,
                        ),
                        child: Column(
                          children: [Text("fahrenheit"), Text("$_fahrenheit")],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    hitungSuhu();
                  },
                  child: const Text(
                    'Konversi Suhu',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
