import 'package:flutter/material.dart';
import './model/transaction_data.dart';
import 'package:provider/provider.dart';

class ActionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/money');
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6.0),
                      ),
                      color: Colors.blue[900]),
                  //color: Colors.green,
                  padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(Icons.list),
                        backgroundColor: Colors.white,
                        radius: 30.0,
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        "Manage Money",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                          "${Provider.of<TransactionData>(context).numberOfTransaction()} items",
                          style: TextStyle(color: Colors.white, fontSize: 13.0))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                    color: Color(0xFF2c3e50)),
                padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(Icons.bookmark),
                      backgroundColor: Colors.white,
                      radius: 30.0,
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      "Budget",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    SizedBox(height: 3.0),
                    Text("15 items",
                        style: TextStyle(color: Colors.white, fontSize: 13.0))
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15.0),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                    color: Colors.yellow[800]),
                //color: Colors.green,
                padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(Icons.score),
                      backgroundColor: Colors.white,
                      radius: 30.0,
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      "Credit score",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    SizedBox(height: 3.0),
                    Text("5 items",
                        style: TextStyle(color: Colors.white, fontSize: 13.0))
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6.0),
                    ),
                    color: Colors.brown[300]),
                padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(Icons.credit_card),
                      backgroundColor: Colors.white,
                      radius: 30.0,
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      "Credit cards",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    SizedBox(height: 3.0),
                    Text("19 items",
                        style: TextStyle(color: Colors.white, fontSize: 13.0))
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
