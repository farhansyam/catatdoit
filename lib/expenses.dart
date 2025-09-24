import 'package:catetdoit/Model/expense.dart';
import 'package:catetdoit/expenses_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  @override
  State<Expenses> createState() {
    // TODO: implement createState
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> todayExpenses = [
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
      body: Column(
        children: [
          SizedBox(height: 100),
          // 1️⃣ Total Expense
          Container(
            child: Text(
              'Rp xxx.xxx',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 50),

          // 2️⃣ Chart
          Container(
            height: 200,
            child: Placeholder(), // nanti ganti pakai chart beneran
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: Text(
              'Today',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 15,
            endIndent: 15,
            height: 2,
          ),
          // 3️⃣ Today Expense List (scroll ke bawah)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView.builder(
                itemCount: todayExpenses.length,
                itemBuilder: (ctx, index) {
                  final expense = todayExpenses[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 50,
                            child: Text(
                              expense.category.name,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            expense.title,
                            style: TextStyle(fontSize: 16),
                          ), // judul
                        ],
                      ), // kategori

                      Text(
                        'Rp ${expense.amount}',
                        style: TextStyle(fontSize: 18),
                      ), // jumlah
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),

      // 4️⃣ Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: 'Chart'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
