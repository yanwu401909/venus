import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/sign_2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              actions: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: InkResponse(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Log in with your account",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 2.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white.withOpacity(0.3),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  icon: Image.asset(
                    "assets/icon_email.png",
                    width: 20.0,
                    height: 20.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 2.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white.withOpacity(0.3),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  icon: Image.asset(
                    "assets/icon_password.png",
                    width: 20.0,
                    height: 20.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            RaisedButton(
              padding: EdgeInsets.all(0.0),
              color: Color(0xffee8778),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  "Log In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/nearbyfriends");
              },
            ),
            Expanded(
              child: Container(),
            ),
            Material(
              color: Colors.transparent,
              elevation: 0.0,
              child: InkWell(
                child: Text(
                  "Forget password?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double,
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/forgetpassword");
                },
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Expanded(
              child: Container(),
            ),
            Expanded(
              child: Container(),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
