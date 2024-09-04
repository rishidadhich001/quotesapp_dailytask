import 'package:flutter/material.dart';

Padding fulldialog({required String label,required String hint}) {
  return Padding(
    padding:  const EdgeInsets.only(top: 10,left:15,right:15),
    child: TextField(
      decoration: InputDecoration(
        label: Text(label),
        hintText: hint,
        suffixIcon: const Icon(Icons.arrow_drop_down),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}