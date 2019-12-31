import 'package:flutter/material.dart';
import 'Quote.dart';
import 'Quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Oscar Willy', text:'Mind the above kid, oldies' ),
    Quote(author: 'Oscar Willy', text:'Roses are red violets a blue' ),
    Quote(author: 'Oscar Willy', text:'It rains when it shines sucker' )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),

      ),
    );
  }
}


