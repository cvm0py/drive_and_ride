import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "Symbols.dart";
import "driver_card.dart";
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
  List<Symbol> driverInfo=[
    Symbol(driverName: 'Abhay',vehicleType: '4'),
    Symbol(driverName: 'Hamza',vehicleType: '2'),
  ];
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
              return DriverCard(
                  sym: rowOfDriver,
                  del: ()
                  {
                    setState(() {
                      driverInfo.remove(rowOfDriver);
                    });
                  }
              );
            }
        ).toList(),
      ),
    );
  }

}
