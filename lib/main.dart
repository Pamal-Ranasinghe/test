import 'package:flutter/material.dart';
import 'quotes.dart';
import './quote_card.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quotes> quotes = [
    Quotes(author: 'Martin', texts: 'try and try one day u can die'),
    Quotes(author: 'Martin', texts: 'try and try one day u can die'),
    Quotes(author: 'Martin', texts: 'try and try one day u can die'),
    Quotes(author: 'Martin', texts: 'try and try one day u can die')
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Awesome quotes'),
        backgroundColor: Colors.grey[400],
      ),
      body: Column(
       children:quotes.map((quote) =>
            QuoteCard(
              quote:quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              }
            )
        ).toList(),

       //FlatButton(onPressed: null, child: null)
      ),

      
    );
  }

  
}

