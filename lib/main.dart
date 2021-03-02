import 'package:flutter/material.dart';
import 'input.dart';
import 'convert.dart';
import 'result.dart';
import 'history.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  List<String> listViewItem = List<String>();
  String newValue = "Kelvin";
  double _result = 0;

  TextEditingController suhu = new TextEditingController();

  double _inputSuhu = 0;
  // double _kelvin = 0;
  // double _reamor = 0;
  var listItem = ["Kelvin", "Reamur", "Fahrenheit"];
  void hitungSuhu() {
    setState(() {
      _inputSuhu = double.parse(suhu.text);
      if (newValue == "Kelvin")
        _result = _inputSuhu + 273;
      else if (newValue == "Reamur")
        _result = (4 / 5) * _inputSuhu;
      else
        _result = (_inputSuhu * 9 / 5) + 32;
      listViewItem.add("$newValue : $_result");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konverter Suhu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              Input(input: suhu),
              DropdownButton<String>(
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: newValue,
                onChanged: (String changeValue) {
                  setState(() {
                    newValue = changeValue;
                    hitungSuhu();
                  });
                },
              ),
              Result(result: _result),
              Convert(konvertHandler: hitungSuhu),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Riwayat Konversi",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                child: History(listViewItem: listViewItem),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
