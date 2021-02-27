import 'package:flutter/material.dart';
import 'main.dart';

class DonatePage extends StatefulWidget {
  @override
  _DonatePageState createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {

  int _value = 1;
  //int _value2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CHOOSE THE GARMENT"),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(160.0, 40,40,160),
          child: DropdownButton(
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text("Shirt"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Pant"),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text("Blazer"),
                  value: 3
                ),
                DropdownMenuItem(
                    child: Text("Socks"),
                    value: 4
                ),
                DropdownMenuItem(
                    child: Text("Others"),
                    value: 5
                )
              ],
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }),
              /*child: RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Back'),
        ),*/
        ));
  }
}