import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Welcome back",
            style: TextStyle(fontSize: 25.0, color: Colors.grey),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            "Beam Budget",
            style: TextStyle(
                fontSize: 35.0,
                color: Color(0xFF2c3e50),
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
