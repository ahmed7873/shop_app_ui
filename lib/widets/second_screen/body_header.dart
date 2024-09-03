import 'package:flutter/material.dart';

class HeaderBodyScondScreen extends StatelessWidget {
  const HeaderBodyScondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("data"),
      subtitle: Text("dah adyg yuayi asyu"),
      leading: Image.asset("images/7.jpeg"),
      trailing: Icon(
        Icons.favorite,
        color: Colors.orange[700],
      ),
    );
  }
}
