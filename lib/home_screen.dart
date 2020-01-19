import 'package:flutter/material.dart';
import './header.dart';
import './actions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HeaderSection(),
                SizedBox(
                  height: 38.0,
                ),
                // TextField(
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     //labelText: "Search",
                //     hintText: "search",
                //     prefixIcon: Icon(Icons.search),
                //   ),
                // ),
                SizedBox(
                  height: 25.0,
                ),
                ActionSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
