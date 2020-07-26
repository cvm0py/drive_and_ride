import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "Symbols.dart";
void main()
{
  runApp(MaterialApp(
    home : Menu(),
  ));
}
class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  List<Symbol> driverInfo=[
    Symbol(driverName: 'Abhay',vehicleType: '4'),
    Symbol(driverName: 'Hamza',vehicleType: '2'),
  ];

  Widget driverTemplate(rowOfDriver)
  {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                rowOfDriver.driverName,
                style:TextStyle(
                    fontSize: 18,
                    color:Colors.grey[600]
                ),

              ),
              SizedBox(height: 6),
              Container(
                padding: EdgeInsets.all(10),
                child: _getIcon(rowOfDriver.vehicleType),

              ),
            ],
          ),
        )
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title:Row(
          children: <Widget>[
            Text('HEyy',style: TextStyle(color: Colors.red),),

            Text('there',style: TextStyle(color: Colors.green),)
          ],
        ),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:driverInfo.map(
                (rowOfDriver)
            {
              return driverTemplate(rowOfDriver);
            }
        ).toList(),
      ),
    );
  }
  Widget _getIcon(String vType)
  {
    if(vType=='4')
    {
      return Icon(Icons.directions_car,color: Colors.black,);
    }
    else if(vType=='2')
    {
      return Icon(Icons.directions_bike,color: Colors.black,);
    }
    else
    {
      return Text('Invalid Vehicle Type');
    }
  }
}
