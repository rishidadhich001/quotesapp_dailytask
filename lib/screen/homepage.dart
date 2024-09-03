import 'package:flutter/material.dart';
import 'package:quotesapp_dailytask/screen/Model/quote_list.dart';
import 'package:quotesapp_dailytask/screen/Model/quotes_model.dart';
import 'package:quotesapp_dailytask/screen/component/griedviewmethod.dart';
import 'package:quotesapp_dailytask/screen/component/listviewmethod.dart';
import 'package:quotesapp_dailytask/utils/global.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    QuotesView=quotelist.map((e)=>Quotes.fromMap((e))).toList();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade900,
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              isGrid= !isGrid;
            });
          }, icon: (isGrid)?const Icon(Icons.grid_view_outlined,color: Colors.white,):const Icon(Icons.list_alt_outlined,color: Colors.white,))
        ],
      ),
      body: (isGrid)?const GriedviewMethod():const Listviewmethod(),
    );
  }
}
