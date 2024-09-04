import 'package:flutter/material.dart';

Widget emailAddress({required String email,required String image}) {
  return  Row(
    children: [
      CircleAvatar(
        backgroundImage: NetworkImage(image),
      ),
      const SizedBox(
        width: 8,
      ),
      Text(
        email,
        style: const TextStyle(fontSize: 12),
      ),
    ],
  );
}