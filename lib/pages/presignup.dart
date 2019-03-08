import 'package:flutter/material.dart';

class PreSignUpPage extends StatefulWidget {
  @override
  _PreSignUpPageState createState() => _PreSignUpPageState();
}

class _PreSignUpPageState extends State<PreSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/presignup.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Instantly meet\nnew friends",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Meet new friends and share music\nor talk about everything.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                RaisedButton(
                  color: Color(0xffee8778),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 10.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/icon_facebook.png",
                        width: 30.0,
                        height: 30.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 5.0),
                        child: Text(
                          "Continue with facebook",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
                RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 10.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/icon_email_black.png",
                        width: 30.0,
                        height: 30.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 5.0),
                        child: Text(
                          "Sign Up with Email",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Already have account？ ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      elevation: 0.0,
                      child: InkWell(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.double,
                            letterSpacing: 2.0,
                            color: Colors.white,
                            fontSize: 15.0,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/signin");
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
