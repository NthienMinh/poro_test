import 'package:flutter/material.dart';

PreferredSizeWidget CustomAppbar(String title) {
  return AppBar(
    backgroundColor: const Color(0xFFBB0000),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
    ),
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {},
    ),
    title: Text(
      title,
      style: const TextStyle(color: Colors.white),
    ),
    centerTitle: true,
  );
}
