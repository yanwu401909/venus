import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NearByFriendsPage extends StatefulWidget {
  @override
  _NearByFriendsPageState createState() => _NearByFriendsPageState();
}

class _NearByFriendsPageState extends State<NearByFriendsPage> {
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
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.redAccent,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            "Find New\nFriends Nearby",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  CustomPaint(
                    size: Size(MediaQuery.of(context).size.width * 0.8,
                        MediaQuery.of(context).size.width * 0.8),
                    painter: Radar(colors: [
                      Colors.white,
                      Colors.white,
                      Colors.red[500],
                      Colors.red[400],
                      Colors.red[300],
                      Colors.red[200],
                      Colors.red[100],
                      Colors.red[50],
                    ]),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      maxRadius: 25.0,
                      backgroundImage: AssetImage("assets/default_head_01.jpg"),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.5,-0.5),
                    child: CircleAvatar(
                      maxRadius: 25.0,
                      backgroundImage: AssetImage("assets/default_head_02.jpg"),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.7,0.4),
                    child: CircleAvatar(
                      maxRadius: 25.0,
                      backgroundImage: AssetImage("assets/default_head_03.jpg"),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.5,0.5),
                    child: CircleAvatar(
                      maxRadius: 25.0,
                      backgroundImage: AssetImage("assets/default_head_04.jpg"),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.7,-0.4),
                    child: CircleAvatar(
                      maxRadius: 25.0,
                      backgroundImage: AssetImage("assets/default_head_05.jpg"),
                    ),
                  ),
                ],
              ),
            ),
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
                "Find Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/findfriends");
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

class Radar extends CustomPainter {
  List<Color> colors;
  double width;
  Radar({this.colors = const [], this.width = 2.0});

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double maxRadius =
        size.width >= size.height ? size.height / 2 : size.width / 2;
    double increment = maxRadius /
        ((colors == null || colors.length == 0) ? 1 : (colors.length << 2));
    Paint paint = Paint();
    paint.strokeWidth = width;
    double radius = 0;
    for (var i = 0; i < colors.length; i++) {
      radius += increment * (i + 1);
      paint.color = colors[i];
      paint.style = PaintingStyle.stroke;
      canvas.drawCircle(center, radius, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
