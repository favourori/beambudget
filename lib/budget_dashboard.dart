import 'package:flutter/material.dart';
import './model/transaction_data.dart';
import 'package:provider/provider.dart';
import './model/transaction_data.dart';

class BudgetDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(6.0),
                ),
                color: Colors.blue[200]),
            padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.insert_chart),
                  backgroundColor: Colors.blue[900],
                  radius: 30.0,
                ),
                SizedBox(height: 12.0),
                Text(
                  "\$${Provider.of<TransactionData>(context).moneyIn.toString()}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3.0),
                Text("Money in",
                    style: TextStyle(color: Colors.black, fontSize: 14.0))
              ],
            ),
          ),
        ),
        SizedBox(width: 15.0),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(6.0),
                ),
                color: Colors.red[100]),
            padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.remove),
                  backgroundColor: Colors.blue[900],
                  radius: 30.0,
                ),
                SizedBox(height: 12.0),
                Text(
                  "\$${Provider.of<TransactionData>(context).moneyOut.toString()}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3.0),
                Text(
                  "Money out",
                  style: TextStyle(color: Colors.black, fontSize: 14.0),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
