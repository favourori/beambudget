import '../model/transaction.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class TransactionData extends ChangeNotifier {
  double balance = 6500.0;

  List<Transaction> transactions = [
    Transaction(
        title: "Salary",
        subtitle: "Monthly Salary",
        color: Colors.green[600],
        amount: 7000.0,
        avatarText: "S"),
    Transaction(
      title: "Car Payment",
      subtitle: "Monthly Payment",
      color: Colors.red[600],
      amount: 400.0,
      avatarText: "C",
    ),
    Transaction(
      title: "Shopping",
      subtitle: "Monthly shopping",
      color: Colors.red[600],
      amount: 100.0,
      avatarText: "S",
    ),
  ];

  double getBalance() {
    return balance;
  }
}
