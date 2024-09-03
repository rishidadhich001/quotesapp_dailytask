import 'package:flutter/material.dart';
import 'package:quotesapp_dailytask/utils/global.dart';

class GriedviewMethod extends StatefulWidget {
  const GriedviewMethod({super.key});

  @override
  State<GriedviewMethod> createState() => _GriedviewMethodState();
}

class _GriedviewMethodState extends State<GriedviewMethod> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        physics: const BouncingScrollPhysics(),
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
