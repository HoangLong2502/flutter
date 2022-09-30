import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData () {
    if (titleController.text.isEmpty || double.parse(amountController.text) <= 0) {
      return ;
    }

    widget.addNewTransaction(
      titleController.text.toString(),
      double.parse(amountController.text),
    );

    // turn off pop when function click;
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (value) {
              //   titleInput = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
              // onChanged: (value) {
              //   amountInput = value;
              // },
            ),
            TextButton(
              onPressed: () {
                submitData();
                // print(amountInput);
              },
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.orange),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
