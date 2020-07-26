import "package:flutter/material.dart";
import "Symbols.dart";

class DriverCard extends StatelessWidget {

  final Symbol sym;
  final Function del;
  DriverCard({this.sym,this.del});


  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                sym.driverName,
                style:TextStyle(
                    fontSize: 18,
                    color:Colors.grey[600]
                ),

              ),
              SizedBox(height: 6),
              Container(
                padding: EdgeInsets.all(10),
                child: _getIcon(sym.vehicleType),

              ),
              SizedBox(height: 8.0),
              FlatButton.icon(
                onPressed: del,
                icon: Icon(Icons.check_circle_outline,color: Colors.green,),
                label: Text('Select Driver'),
              ),
            ],
          ),
        )
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
