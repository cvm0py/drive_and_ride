
import "package:flutter/material.dart";
import "quote.dart";
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override
  List<Quote> quotes = [
    Quote(text:'hey',quoteOffset: 'Line 1'),
    Quote(text:'I am',quoteOffset: 'Line 2'),
    Quote(text:'Abhay',quoteOffset: 'Line 3'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title:Text('Awesome Quotes'),
        centerTitle : true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:quotes.map(
                (x)
            {
              return Row(
                children: <Widget>[
                  Text('${x.text}--',style: TextStyle(color:Colors.blue),),
                  SizedBox(width:5.0),
                  Text('${x.quoteOffset}',style: TextStyle(color:Colors.red),),
                ],

              );
            }
        ).toList(),
        //children:quotes.map((lines)=>Text('${lines.text} - ${lines.quoteOffset}')).toList(),
      ),
    );
  }
}
