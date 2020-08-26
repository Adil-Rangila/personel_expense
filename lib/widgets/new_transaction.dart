import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTrans;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTrans);

  void addData() {
    final enterTitle = titleController.text;
    final enterAmount = double.parse(amountController.text);

    if (enterTitle.isEmpty || enterAmount <= 0) {
      return;
    }

    addTrans(
      enterTitle,
      enterAmount,
    );
  }

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
              onSubmitted: (_) => addData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => addData(),
            ),
            FlatButton(
              textColor: Colors.purple,
              onPressed: addData,
              child: Text('Add Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
