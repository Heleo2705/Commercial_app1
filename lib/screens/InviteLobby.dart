import 'package:flutter/material.dart';

class InviteLobby extends StatefulWidget {
  InviteLobby({Key key}) : super(key: key);

  @override
  _InviteLobbyState createState() => _InviteLobbyState();
}

class _InviteLobbyState extends State<InviteLobby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Invite your Friends"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Choose the method of invite"),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text("Invite LInk"),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text("Choose from online"),
                )
              ])
        ],
      ),
    );
  }
}
