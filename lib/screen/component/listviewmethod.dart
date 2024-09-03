import 'package:flutter/material.dart';
import 'package:quotesapp_dailytask/utils/global.dart';

class Listviewmethod extends StatefulWidget {
  const Listviewmethod({super.key});

  @override
  State<Listviewmethod> createState() => _ListviewmethodState();
}

class _ListviewmethodState extends State<Listviewmethod> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: QuotesView.length,
        itemBuilder: (context,index)=>Card(
          color: Colors.yellow.shade900,
          elevation: 8,
          child: ListTile(
            title: Text(QuotesView[index].quote,overflow: TextOverflow.ellipsis,maxLines: 4,),
            subtitle: Text(QuotesView[index].author),
          ),
        ),
      ),
    );
  }
}
