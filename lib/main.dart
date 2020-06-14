import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myquotes/quotes.dart';

void main() => runApp(MaterialApp(home: Quotes(),));

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List<MyQuotes> quotes = [
    MyQuotes(author: "Adedoyin", quote: 'Be who you are and say what you feel, because those who mind don’t matter, and those who matter don’t mind\n'),
    MyQuotes(author: "Adedoyin", quote:  'Be yourself everyone else is already taken.\n'),
    MyQuotes(author: "Adedoyin", quote:  'Insanity is doing the same thing, over and over again, but expecting different results.\n'),
    MyQuotes(author: "Adedoyin", quote:  'I\’ve learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel.\n'),
    MyQuotes(author: "Adedoyin", quote:  'To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Favorite Quotes", style: TextStyle(fontWeight: FontWeight.bold),), backgroundColor: Colors.blueGrey[500], centerTitle: true,),
    body: Column(
      children: quotes.map((quote) => Text('${quote.quote} - ${quote.author}')).toList(),
    ),
    );
  }
}
