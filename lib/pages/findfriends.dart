import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FindFriendsPage extends StatefulWidget {
  @override
  _FindFriendsPageState createState() => _FindFriendsPageState();
}

class _FindFriendsPageState extends State<FindFriendsPage> {
  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle overlayStyle = SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    );
    SystemChrome.setSystemUIOverlayStyle(overlayStyle);
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            brightness: Brightness.light,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.redAccent,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  right: 15.0,
                ),
                child: Center(
                  child: InkResponse(
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
          CircleAvatar(
            maxRadius: 80,
            backgroundImage: AssetImage("assets/default_head_01.jpg"),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Find Friends",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Tell your friends about the app so that\nthey'll see your messsages faster",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                maxRadius: 20.0,
                backgroundImage: AssetImage("assets/default_head_02.jpg"),
              ),
              SizedBox(width: 5.0),
              CircleAvatar(
                maxRadius: 20.0,
                backgroundImage: AssetImage("assets/default_head_03.jpg"),
              ),
              SizedBox(width: 5.0),
              CircleAvatar(
                maxRadius: 20.0,
                backgroundImage: AssetImage("assets/default_head_04.jpg"),
              ),
              SizedBox(width: 5.0),
              CircleAvatar(
                maxRadius: 20.0,
                backgroundImage: AssetImage("assets/default_head_05.jpg"),
              ),
              SizedBox(width: 5.0),
              CircleAvatar(
                maxRadius: 20.0,
                backgroundImage: AssetImage("assets/default_head_06.jpg"),
              ),
              SizedBox(width: 5.0),
              CircleAvatar(
                maxRadius: 20.0,
                backgroundImage: AssetImage("assets/default_head_07.jpg"),
              ),
              SizedBox(width: 5.0),
              CircleAvatar(
                maxRadius: 20.0,
                backgroundImage: AssetImage("assets/default_head_08.jpg"),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "7 of your friends are already join us",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            "Meet new friends",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "When You Are Down And Out How Do You\nGet Up And Go Forward",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            padding: EdgeInsets.all(0.0),
            color: Color(0xffee8778),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "Add from Contacts",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            onPressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            padding: EdgeInsets.all(0.0),
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/icon_facebook.png",
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Add from Facebook",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/friendspick");
            },
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
