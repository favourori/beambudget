import 'package:beambudget/model/transaction.dart';
import 'package:flutter/material.dart';
import './model/transaction_data.dart';
import 'package:provider/provider.dart';
import './model/transaction_data.dart';

class CreateTransaction extends StatefulWidget {
  @override
  _CreateTransactionState createState() => _CreateTransactionState();
}

class _CreateTransactionState extends State<CreateTransaction> {
  //variables
  static int moneyCategory = 1;
  final titleController = TextEditingController();
  final subtitleController = TextEditingController();
  final amountController = TextEditingController();
  Color color = moneyCategory == 1 ? Colors.green : Colors.red;

  //final action  = moneyCategory == 1 ?

  @override
  void initState() {
    super.initState();
    setState(() {
      moneyCategory = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create transaction"),
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                    labelText: "Title",
                    //hintText: "Title",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                maxLength: 30,
                controller: subtitleController,
                decoration: InputDecoration(
                    labelText: "Description",
                    //hintText: "Title",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 1.0,
              ),
              TextField(
                controller: amountController,
                decoration: InputDecoration(
                    labelText: "Amount",
                    //hintText: "Title",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 15.0,
              ),
              ListTile(
                title: Text("Money in"),
                contentPadding: EdgeInsets.all(0),
                trailing: Radio(
                  groupValue: moneyCategory,
                  value: 1,
                  onChanged: (value) {
                    setState(() {
                      moneyCategory = value;
                    });
                    print(moneyCategory);
                    // print(moneyCategory);
                  },
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.add),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              ListTile(
                title: Text("Money out"),
                contentPadding: EdgeInsets.all(0),
                trailing: Radio(
                  groupValue: moneyCategory,
                  value: 2,
                  onChanged: (value) {
                    setState(() {
                      moneyCategory = value;
                    });
                    print(moneyCategory);
                  },
                ),
                leading: CircleAvatar(
                  child: Icon(Icons.remove),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
              ),
              SizedBox(
                height: 70.0,
              ),
              MaterialButton(
                onPressed: () {
                  //Transaction transaction = Transaction()
                  print(titleController.text);
                  print(subtitleController.text);
                  print(double.parse(amountController.text));
                  print(moneyCategory);
                  print(color);

                  Provider.of<TransactionData>(context, listen: false)
                      .transactions
                      .add(
                        Transaction(
                            title: titleController.text,
                            subtitle: subtitleController.text,
                            amount: double.parse(amountController.text),
                            color: color,
                            avatarText: titleController.text[0]),
                      );

                  if (moneyCategory == 1) {
                    Provider.of<TransactionData>(context, listen: false)
                        .addMoney(double.parse(amountController.text));
                  } else {
                    Provider.of<TransactionData>(context, listen: false)
                        .deductMoney(double.parse(amountController.text));
                  }

                  Navigator.pushReplacementNamed(context, '/money');
                },
                child: Text(
                  "Create transaction",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue[900],
                padding:
                    EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
