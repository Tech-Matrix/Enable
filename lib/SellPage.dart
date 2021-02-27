import 'package:flutter/material.dart';
import 'main.dart';

class SellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SELL YOUR UNIFORM'),
      ),
      body: Container(
        decoration: 
         BoxDecoration(
             image: DecorationImage(
                        image: NetworkImage("https://i.pinimg.com/236x/29/aa/0d/29aa0d016d0e994677556bcbaebc5e46.jpg"),
                        fit: BoxFit.cover,
                        )),
                        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          children: <Widget>[
           
            SizedBox(height: 5.0),
            
            TextField(
              controller: _locationController,
              decoration: InputDecoration(
                hintText: ('Enter the location of the animal'),
                 
                filled: true,
                fillColor : Colors.white,
                labelText: 'Location',
             
              ),
              style: TextStyle(color: Colors.black, fontSize: 20),  

            ),
            
            SizedBox(height: 5.0),
            
            TextField(
              controller: _causeController,
              decoration: InputDecoration(
                hintText: ('Enter the cause of concern'),
                 
                filled: true,
                fillColor : Colors.white,
                labelText: 'Cause',
             
              ),
              style: TextStyle(color: Colors.black, fontSize: 20),  

            ),
            
            ButtonBar(
              
              children: <Widget>[
                
                RaisedButton(
                  child: Text('SUBMIT'),
                  textColor: Colors.black,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  ),
                ),


              ],


            ),   
          
          ],
        ),
        child: RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Back'),
        ),
      ),
    );
  }
}

/*
class SellPage extends StatefulWidget {
  @override
  _SellPageState createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {

  int _value = 1;
  //int _value2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CHOOSE THE GARMENT"),
        ),
        body: Container(
          padding: EdgeInsets.all(160.0),
          child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          children: <Widget>[
           
            SizedBox(height: 5.0),
            
            TextField(
              controller: _locationController,
              decoration: InputDecoration(
                hintText: ('Enter the location of the animal'),
                 
                filled: true,
                fillColor : Colors.white,
                labelText: 'Location',
             
              ),
              style: TextStyle(color: Colors.black, fontSize: 20),  

            ),
            
            SizedBox(height: 5.0),
            
            TextField(
              controller: _causeController,
              decoration: InputDecoration(
                hintText: ('Enter the cause of concern'),
                 
                filled: true,
                fillColor : Colors.white,
                labelText: 'Cause',
             
              ),
              style: TextStyle(color: Colors.black, fontSize: 20),  

            ),
            
            ButtonBar(
              
              children: <Widget>[
                
                RaisedButton(
                  child: Text('SUBMIT'),
                  textColor: Colors.black,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  ),
                ),


              ],


            ),   
          
          ],
        ),*/
          /*child: DropdownButton(
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
*/
          /*child: RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Back'),
        ),
        ),
    );
  }
}
*/