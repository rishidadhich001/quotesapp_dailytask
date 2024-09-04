import 'package:flutter/material.dart';
import 'package:quotesapp_dailytask/screen/component/email_address.dart';
import 'package:quotesapp_dailytask/utils/global.dart';
AlertDialog alertDialog_method(BuildContext context) {
  return AlertDialog(
    icon: IconButton(
        onPressed: () {}, icon: const Icon(Icons.restart_alt)),
    title: const Text(
      'Reset settings?',
      style: TextStyle(fontSize: 20),
    ),
    content: const Text(
        'This will reset your app preference back to their default settings.The following accounts will aso be signed out:'),
    actions: [
      Column(
        children: [
          const Divider(),
          emailAddress(email: 'leevillanuevanotes@gamil.com',image: img),
          const SizedBox(height: 10,),
          emailAddress(email: 'alloalejandro@gail.com', image: img1),
          const SizedBox(height: 10,),
          emailAddress(email: 'oliortega@gmail.com', image: img2),
          const SizedBox(height: 10,),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Accept'),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}