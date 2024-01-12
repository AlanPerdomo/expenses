import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = <Transaction>[
    Transaction(
      id: 't1',
      title: 'Hambúrguer',
      value: 59.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Cerveja',
      value: 9.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Suco',
      value: 19.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Sorvete',
      value: 29.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Refrigerante',
      value: 39.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Cerveja',
      value: 9.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'Suco',
      value: 19.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't8',
      title: 'Sorvete',
      value: 29.99,
      date: DateTime.now(),
    )
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: DateTime.now().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
        TransactionForm(_addTransaction),
      ],
    );
  }
}
