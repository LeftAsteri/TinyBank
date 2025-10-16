import 'package:flutter/material.dart';
import 'package:flutter_training_template/sign.dart';

class Bank extends StatefulWidget {
  const Bank({super.key});

  @override
  State<Bank> createState() => _Bank();
}

double cash = 0.0;
double amount = 0.0;

class _Bank extends State<Bank> {
  String user = johnAccount.getUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome $user'),
            Text('\$$cash \n \n \n \n \n \n'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Deposit'),
                    Container(
                      width: 200,
                      height: 100,
                      child: TextField(
                        onChanged: (text) {
                          amount = double.parse(text);
                        },
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          cash = cash + (((amount*100).round()) / 100);
                        });
                      },
                      child: Text('Deposit'),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Withdrawl'),
                    Container(
                      width: 200,
                      height: 100,
                      child: TextField(
                        onChanged: (text2) {
                          amount = amount = double.parse(text2);

                        },
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          cash = cash - (((amount*100).round()) / 100);
                        });
                      },
                      child: Text('Withdrawl'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
