import 'package:flutter/material.dart';
import './transaction_item.dart';
import './model/transaction.dart';
import './model/transaction_data.dart';
import 'package:provider/provider.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              )),
          //height: 800.0,
          //color: Colors.white,
          child: Container(
              padding: EdgeInsets.fromLTRB(20.0, 23.0, 20.0, 0),
              child: ListView.builder(
                itemCount:
                    Provider.of<TransactionData>(context).numberOfTransaction(),
                itemBuilder: (context, index) {
                  return TransactionItem(
                    title: Provider.of<TransactionData>(context)
                        .transactions[index]
                        .title,
                    subtitle: Provider.of<TransactionData>(context)
                        .transactions[index]
                        .subtitle,
                    color: Provider.of<TransactionData>(context)
                        .transactions[index]
                        .color,
                    amount:
                        "\$${Provider.of<TransactionData>(context).transactions[index].amount.toString()}",
                    avatarText: Provider.of<TransactionData>(context)
                        .transactions[index]
                        .getAvatarText(),
                  );
                },
              ))),
    );
  }
}
