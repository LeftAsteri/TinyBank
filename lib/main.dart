import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'bank.dart';
import 'management.dart';
import 'sign.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

String username = '';
String password = '';

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              width: 240,
              height: 48.0,
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    username = text;
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
                        password = pass;
                      });
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                print(password);
                print(johnAccount.check());
                print(username);
                if (johnAccount.check() == true) {
                  context.go('/bank');
                }
              },
              child: const Text('Go'),
            ),
            TextButton(
              onPressed: () {
                context.go('/signUp');
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return MyHomePage();
      },
      routes: [
        GoRoute(
          path: 'bank',
          builder: (BuildContext context, GoRouterState state) {
            return Bank();
          },
          routes: [
            GoRoute(
              path: '/account',
              builder: (BuildContext context, GoRouterState state) {
                return Bank();
              },
            ),
          ],
        ),
        GoRoute(
          path: 'signUp',
          builder: (BuildContext context, GoRouterState state) {
            return SignIn();
          },
        ),
      ],
    ),
  ],
);

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: const Column(
        children: <Widget>[
          // Add TextFormFields and ElevatedButton here.
        ],
      ),
    );
  }
}
