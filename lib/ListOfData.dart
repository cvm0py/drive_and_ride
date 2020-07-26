import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int iqLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:Text('Ride And Drive'),
        centerTitle: true,
        backgroundColor:Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding:EdgeInsets.fromLTRB(30,40,30,0.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('asset/avt.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.blue[800],
            ),
            Text(
              'NAME',
              style:TextStyle(
                color:Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Abhay',
              style:TextStyle(
                fontSize: 28,
                color:Colors.amberAccent[200],
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'CURRENT IQ LEVEL',
              style:TextStyle(
                color:Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$iqLevel',
              style:TextStyle(
                fontSize: 28,
                color:Colors.amberAccent[200],
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10,),
                Text(
                  "shanurajput00000007@gmail.com",
                  style:TextStyle(
                    color:Colors.grey[400],
                    fontSize: 13,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            if(iqLevel<=50)
            {
              iqLevel += 10;
            }
            else if(iqLevel>50)
            {
              iqLevel=10;
            }
          });
        },
        child:Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        elevation: 5,
      ),
    );
  }
}