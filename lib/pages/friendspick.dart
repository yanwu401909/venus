import 'dart:math';

import 'package:flutter/material.dart';
import 'package:venus/model/models.dart';

class FriendsPickPage extends StatefulWidget {
  @override
  _FriendsPickPageState createState() => _FriendsPickPageState();
}

class _FriendsPickPageState extends State<FriendsPickPage> {
  final double distance = 400;
  double dragPercent = 0.0;
  double dragDistance = 0.0;
  Offset start;
  void _dragStart(DragStartDetails details) {
    start = details.globalPosition;
  }

  void _dragUpdate(DragUpdateDetails details) {
    dragDistance =details.globalPosition.dx - start.dx;
    dragPercent = (details.globalPosition.dx - start.dx).abs() / 400;
    setState(() {});
  }

  void _dragEnd(DragEndDetails details) {
    print("Move End!!!!!!!!!!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          AppBar(
            backgroundColor: Colors.transparent,
            brightness: Brightness.light,
            elevation: 0.0,
            centerTitle: true,
            title: Text(
              "Find Friends",
              style: TextStyle(color: Colors.black),
            ),
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
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.7,
            padding: const EdgeInsets.all(30.0),
            child: Stack(
              children: <Widget>[
                Transform(
                  transform: Matrix4.identity()
                    ..scale(0.8)
                    ..translate(40.0, -40.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Transform(
                  transform: Matrix4.identity()
                    ..scale(0.9 + 0.1 * dragPercent)
                    ..translate(
                        20.0 * (1 - dragPercent), -20.0 * (1 - dragPercent)),
                  child: PictureCard(
                    model: PictureCardModel(
                      name: "森系",
                      occupation: "森系",
                      imageUrl:
                          "https://b-ssl.duitang.com/uploads/item/201605/21/20160521210921_HMQYS.thumb.700_0.jpeg",
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: pi/4 * dragPercent,
                  origin: Offset(dragDistance, 0),
                  child: PictureCard(
                    model: PictureCardModel(
                      name: "森系",
                      occupation: "森系",
                      imageUrl:
                          "https://b-ssl.duitang.com/uploads/item/201509/23/20150923185801_kwBdc.thumb.700_0.jpeg",
                    ),
                  ),
                ),
                GestureDetector(
                  onHorizontalDragStart: _dragStart,
                  onHorizontalDragUpdate: _dragUpdate,
                  onHorizontalDragEnd: _dragEnd,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.grey,
                shape: CircleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.bubble_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                onPressed: () {},
              ),
              RaisedButton(
                color: Colors.redAccent,
                shape: CircleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}

class PictureCard extends StatelessWidget {
  final PictureCardModel model;

  PictureCard({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.transparent,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(model.imageUrl),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400],
              blurRadius: 15,
              offset: Offset(0, 20.0),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "${model.name}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "${model.occupation}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.w200,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "${model.posts}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Posts",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  child: SizedBox(
                    width: 1.0,
                    height: 30,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "${model.follows}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Follows",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  child: SizedBox(
                    width: 1.0,
                    height: 30,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "${model.following}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
