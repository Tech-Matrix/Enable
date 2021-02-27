import 'package:flutter/material.dart';
import 'SellPage.dart';
import 'DonatePage.dart';
import 'BuyPage.dart';
import 'LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'What\'s your smart move?',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //backgroundColor: Colors.red,
        body: Container(
          //margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),

          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage("https://i.pinimg.com/236x/29/aa/0d/29aa0d016d0e994677556bcbaebc5e46.jpg"),
            fit: BoxFit.cover,
          )),

          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //Padding(
                //     padding: EdgeInsets.all(10.0),

                SizedBox(
                  width: 200.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DonatePage()),
                    ),
                    //color: Color(0xffFF1744),
                    color: Colors.white,
                    textColor: Colors.black,
                    splashColor: Colors.grey,
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    //.all
                    child: Text('DONATE'),
                  ),
                ),
                //),
                Divider(),

                SizedBox(
                  width: 200.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellPage()),
                    ),
                    //color: Color(0xffFF1744),
                    color: Colors.white,
                    textColor: Colors.black,
                    splashColor: Colors.grey,
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Text('SELL'),
                  ),
                ),
                Divider(),
                //ButtonTheme(
                //minWidth: 200.0,
                //height: 100.0,
                SizedBox(
                  width: 200.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BuyPage()),
                    ),
                    //color: Color(0xffFF1744),
                    color: Colors.white,
                    textColor: Colors.black,
                    splashColor: Colors.grey,
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Text('BUY'),
                  ),
                ),
                Divider(height: 100),

                /*Padding( 
                  padding: EdgeInsets.all(10.0),*/
                SizedBox(
                  width: 80.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () => Navigator.pop(context),

                    //color: Color(0xffFF1744),
                    color: Colors.white,
                    textColor: Colors.black,
                    splashColor: Colors.grey,
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Text('BACK'),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
