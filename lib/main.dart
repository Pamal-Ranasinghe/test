import 'package:flutter/material.dart';
import 'quotes.dart';
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
       children:quotes.map((quote) {
            return quoteTemplate(quote);
        }).toList(),

       //FlatButton(onPressed: null, child: null)
      ),

      
    );
  }

    Widget quoteTemplate(dynamic quote){
    return QuoteCard(quote:quote);
  }
}

class QuoteCard extends StatelessWidget {

  final Quotes quote;
  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Text(
              quote.texts,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize:14.0,
                color: Colors.grey[600]
              ),
            ),
            SizedBox(
              height: 8.0,
            ),

            FlatButton.icon(onPressed: (){},
            label: Text('delete quote'),
            icon: Icon(Icons.delete),
            ),
          ]
        ),
      ),
    );
  }
}
