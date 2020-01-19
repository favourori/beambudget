import 'package:flutter/material.dart';
import './transaction_item.dart';

class Transactions extends StatelessWidget {
  const Transactions({
    Key key,
  }) : super(key: key);

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
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(20.0, 23.0, 20.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Text(
                          "Recent",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: FlatButton(
                          onPressed: () {},
                          color: Colors.grey[200],
                          child: Text(
                            "See all",
                            style: TextStyle(color: Colors.blue[900]),
                          ),
                        ),
                      )
                    ],
                  ),
                  TransactionItem(
                    title: "Salary",
                    subtitle: "Monthly Salary",
                    color: Colors.green[600],
                    amount: "\$7000",
                    avatarText: "S",
                  ),
                  TransactionItem(
                    title: "Car Payment",
                    subtitle: "Monthly Payment",
                    color: Colors.red[600],
                    amount: "\$400",
                    avatarText: "C",
                  ),
                  TransactionItem(
                    title: "Clothe shopping",
                    subtitle: "For business meeting",
                    color: Colors.red[600],
                    amount: "\$400",
                    avatarText: "C",
                  ),
                  TransactionItem(
                    title: "Side business",
                    subtitle: "Web development",
                    color: Colors.green[600],
                    amount: "\$600",
                    avatarText: "C",
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
