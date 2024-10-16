import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RecordItem extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
      ),
      child: Row(
        children: [
          // Date and time
          Text(
            '2024/06/12 19:25',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Spacer(), // Spacer to push the arrow icon to the right
          // Arrow Icon
          Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
    );
  }
}
