import 'package:flutter/material.dart';

class WarningWidget extends StatelessWidget {
  final String title, desc;
  const WarningWidget({
    super.key,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      // height: 100,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        leading: const Icon(Icons.security_update_warning_outlined),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          alignment: Alignment.centerRight,
          width: 150,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                desc,
                style: const TextStyle(color: Colors.white),
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_right_alt))
            ],
          ),
        ),
      ),
    );
  }
}
