import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.orange,
                    width: 2,
                  )),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    // Giá cả
                    // Không cần dùng toString() vì dart đã làm điều đó khi ta dùng cú pháp dưới
                    '\$${transactions[index].amount.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Color.fromARGB(255, 79, 79, 79),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transactions[index].title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      DateFormat().format(transactions[index].date),
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
