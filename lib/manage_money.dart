import 'package:flutter/material.dart';
import './budget_dashboard.dart';
import './transaction_section.dart';
import 'package:provider/provider.dart';
import './model/transaction_data.dart';

class ManageMoney extends StatefulWidget {
  @override
  _ManageMoneyState createState() => _ManageMoneyState();
}

class _ManageMoneyState extends State<ManageMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0.0,

        //title: Text("Manage Money"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.blue[900],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Balance",
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 23.0),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            '\$${Provider.of<TransactionData>(context).getBalance()}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32.0,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 20.0),
                          BudgetDashboard(),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Transactions(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[900],
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
