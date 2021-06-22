import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_dart.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

// ignore: use_key_in_widget_constructors
class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'one', author: '13'),
    Quote(text: 'two', author: '2'),
    Quote(text: 'three', author: '3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(),
      ),
    );
  }
}