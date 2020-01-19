import 'package:flutter/material.dart';

class Transaction {
  String title;
  String subtitle;
  Color color;
  String avatarText;
  double amount;

  Transaction(
      {this.title, this.subtitle, this.color, this.avatarText, this.amount});

  String getAvatarText() {
    return title[0];
  }
}


