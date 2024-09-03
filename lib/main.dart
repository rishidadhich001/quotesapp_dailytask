import 'package:flutter/material.dart';
import 'package:quotesapp_dailytask/screen/homepage.dart';
void main()
{
  runApp(const QuotesApp());
}
class QuotesApp extends StatelessWidget {
  const QuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>const Homepage(),
      },
    );
  }
}
