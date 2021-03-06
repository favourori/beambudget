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

  String getCreditReport() {
    if (balance == 0) {
      return "Unavailable";
    }
    if (balance >= 1000) {
      return "Excellent";
    }

    if (balance <= 500) {
      return "Poor";
    }

    return "Fair";
  }

  int getBudgetScore() {
    if (balance == 0) {
      return 0;
    }
    if (balance >= 1000) {
      return 800;
    }

    if (balance <= 500) {
      return 300;
    }

    return 300;
  }

  void resetBudget() {
    transactions.clear();
    balance = 0;
    moneyIn = 0;
    moneyOut = 0;

    notifyListeners();
  }
}
