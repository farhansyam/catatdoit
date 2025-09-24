import 'package:catetdoit/Model/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses
          .length, //ini buat tau brp jumlah item yang perlu dibuat di dalam list
      itemBuilder: (context, index) => Text(
        expenses[index].title,
      ), //setiap baris list menampilkan Text dari judul Expense
    );
  }
}
