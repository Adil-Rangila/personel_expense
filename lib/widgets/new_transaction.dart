import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTrans;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTrans);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            FlatButton(
              textColor: Colors.purple,
              onPressed: () {
                addTrans(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              child: Text('Add Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
