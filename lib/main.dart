import 'package:flutter/material.dart';
import 'package:venus/pages/sign.dart';
import 'package:venus/pages/signin.dart';
import 'package:venus/pages/signup.dart';
import 'package:venus/pages/start.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vinus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/start",
      routes: {
        "/start":(context)=>StartPage(),
        "/sign":(context)=>SignPage(),
        "/signin":(context)=>SignInPage(),
        "/signup":(context)=>SignUpPage(),
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
