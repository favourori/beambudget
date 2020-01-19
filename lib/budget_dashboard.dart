import 'package:flutter/material.dart';

class BudgetDashboard extends StatelessWidget {
  const BudgetDashboard({
    Key key,
  }) : super(key: key);

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
                  "\$5,000",
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
                  "\$2,000",
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
