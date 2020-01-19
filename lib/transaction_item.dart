import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final title;
  final subtitle;
  final Color color;
  final avatarText;
  final amount;

  TransactionItem(
      {this.title, this.subtitle, this.color, this.amount, this.avatarText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Text(title),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        child: Text(
          avatarText,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        radius: 30.0,
        backgroundColor: color,
        foregroundColor: Colors.white,
      ),
      trailing: Text(
        amount,
        style: TextStyle(
            color: color, fontWeight: FontWeight.bold, fontSize: 15.0),
      ),
    );
  }
}
