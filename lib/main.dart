import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'isi.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Konverter Suhu',
      home: new Tampilan(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

// class Page extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return new PageState();
//   }
// }

// class PageState extends State<Page> {
//   // hitungSuhu();

//   TextEditingController suhu = new TextEditingController();
//   double _inputUser = 0;
//   double _kelvin = 0;
//   double _reamur = 0;
//   double _fahrenheit = 0;

//   void hitungSuhu() {
//     setState(() {
//       _inputUser = double.parse(suhu.text);
//       _kelvin = _inputUser + 273;
//       _reamur = (4 / 5) * _inputUser;
//       _fahrenheit = _inputUser * (9 / 5) + 32;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: AppBar(
//         title: Text("Konverter Suhu"),
//       ),
//       backgroundColor: Colors.white,
//       body: new Container(
//         child: new Column(
//           children: <Widget>[
//             Column(
//               children: <Widget>[
//                 new TextFormField(
//                   controller: suhu,
//                   decoration: new InputDecoration(
//                       labelText: "Masukkan Suhu dalam Celcius"),
//                   keyboardType: TextInputType.number,
//                   inputFormatters: <TextInputFormatter>[
//                     FilteringTextInputFormatter.allow(
//                       RegExp(r'[0-9+\.]'),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Expanded(
//                       child: Container(
//                         padding: const EdgeInsets.only(
//                           top: 50.0,
//                           bottom: 50.0,
//                         ),
//                         child: Column(
//                           children: [Text("kelvin"), Text("$_kelvin")],
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         padding: const EdgeInsets.only(
//                           top: 50.0,
//                           bottom: 50.0,
//                         ),
//                         child: Column(
//                           children: [Text("reamur"), Text("$_reamur")],
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         padding: const EdgeInsets.only(
//                           top: 50.0,
//                           bottom: 50.0,
//                         ),
//                         child: Column(
//                           children: [Text("fahrenheit"), Text("$_fahrenheit")],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 ElevatedButton(
//                   onPressed: () {
//                     hitungSuhu();
//                   },
//                   child: const Text(
//                     'Konversi Suhu',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
