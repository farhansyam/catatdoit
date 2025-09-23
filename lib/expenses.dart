import 'package:catetdoit/Model/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  @override
  State<Expenses> createState() {
    // TODO: implement createState
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'jajan',
      amount: 2500,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'OT Merbabu',
      amount: 2500,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Text('Grafik'), Text('List Pengeluaran')]),
    );
  }
}
