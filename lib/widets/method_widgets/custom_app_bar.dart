import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AppBar CustomAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    iconTheme: const IconThemeData(color: Colors.white),
    leading: const Icon(Icons.arrow_back),
  );
}
