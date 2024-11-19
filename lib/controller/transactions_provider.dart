import 'package:app_final_2/model/transaction.dart';
import 'package:flutter/material.dart';

class TransactionsProvider extends ChangeNotifier{
  final List<Transaction>_transactions= [
  Transaction(
    type: TransactionType.income,
    amount: 1000.00,
    description: 'Salary',
  ),
    Transaction(
    type: TransactionType.expense,
    amount: -500.00,
    description: 'Rent',
  ),
  ];
  List<Transaction> get transactions=> _transactions;

  double getTotalIncomes(){
    return _transactions
    .where((transactions) => transactions.type == TransactionType.income)
    .map((transactions) => transactions.amount)
    .fold(0, (a, b) => a + b);
  }

  double getTotalExpenses() {
    return _transactions
    .where((transactions) => transactions.type == TransactionType.expense)
    .map((transactions) => transactions.amount)
    .fold(0, (a, b) => a + b);
  }

  double getBalance(){
    return getTotalIncomes() + getTotalExpenses();
  }

  void addTransactions(Transaction transaction){
    _transactions.add(transaction);
    notifyListeners();
  }
}