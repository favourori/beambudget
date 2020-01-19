import '../model/transaction.dart';
import 'package:flutter/material.dart';

class TransactionData extends ChangeNotifier {
  double balance = 0.0;
  double moneyIn = 0.0;
  double moneyOut = 0.0;

  List<Transaction> transactions = [];

  double getBalance() {
    return balance;
  }

  int numberOfTransaction() {
    return transactions.length;
  }

  void addMoney(amount) {
    balance += amount;
    moneyIn += amount;
    notifyListeners();
  }

  void deductMoney(amount) {
    balance -= amount;
    moneyOut += amount;
    notifyListeners();
  }

  void addTransaction(Transaction transaction) {
    transactions.add(transaction);
    notifyListeners();
  }
}
