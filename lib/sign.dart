import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'management.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignIn();
}
String newUser = '';
String newPass = '';
String johnUser = '';
String johnPass = '';
var johnAccount = Check(newUser, newPass);
class _SignIn extends State<SignIn> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign Up'),
            Container(
              margin: const EdgeInsets.all(10.0),
              width: 240,
              height: 48.0,
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    newUser = text;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Username',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 240,
                  height: 48.0,
                  child: TextField(
                    onChanged: (pass) {
                      setState(() {
                        newPass = pass;
                      });
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                   johnAccount.register();
                  });

                  context.go('/');
                }, child: Text('Add Account'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
