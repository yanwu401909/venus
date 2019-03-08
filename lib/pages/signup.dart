import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
            Expanded(
              child: Container(),
            ),
            Text(
              "Creat Account",
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
              "and start metting new friends\naround the world.",
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
                  hintText: "Username",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  icon: Image.asset(
                    "assets/icon_person.png",
                    width: 25.0,
                    height: 25.0,
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
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  icon: Image.asset(
                    "assets/icon_email.png",
                    width: 25.0,
                    height: 25.0,
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
                    width: 25.0,
                    height: 25.0,
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
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 50.0,
            ),
            Material(
              color: Colors.transparent,
              elevation: 0.0,
              child: InkWell(
                child: Text(
                  "Teams of Use and Privacy Policy",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double,
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                onTap: () {},
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
