import 'package:flutter/material.dart';
import 'main.dart';
/*
class BuyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BUY A UNIFORM'),
      ),
      body: Container(
        decoration: 
         BoxDecoration(
             image: DecorationImage(
                        image: NetworkImage("https://i.pinimg.com/236x/29/aa/0d/29aa0d016d0e994677556bcbaebc5e46.jpg"),
                        fit: BoxFit.cover,
                        )),
        child: RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Back'),
        ),
      ),
    );
  }
}
*/
class BuyPage extends StatefulWidget {
  @override
  _BuyPageState createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {

  int _value = 1;
  //int _value2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dropdown "),
        ),
        body: Container(
          padding: EdgeInsets.all(40.0),
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
              child: RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Back'),
        ),
        ));
  }
}