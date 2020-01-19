import 'package:beambudget/model/transaction_data.dart';
import 'package:flutter/material.dart';
import './home_screen.dart';
import './manage_money.dart';
import 'package:provider/provider.dart';
import './model/transaction_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TransactionData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/money': (context) => ManageMoney()
        },
      ),
    );
  }
}
