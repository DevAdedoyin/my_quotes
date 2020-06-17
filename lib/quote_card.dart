import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:myquotes/quotes.dart';

class QuoteCard extends StatelessWidget {

  final MyQuotes quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[500],
    margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
    child: Padding(
    padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.quote, style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, fontSize: 18.0),),
            Text(quote.author, textAlign: TextAlign.end, style: TextStyle(color: Colors.white70, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
            FlatButton.icon(onPressed: delete, icon: Icon(Icons.delete,color: Colors.red,), label: Text("delete")),
          ],
        ),
      ),
    );
  }
}
