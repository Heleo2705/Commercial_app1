import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
          ),
          InkWell(
            child: card1('Single Player'),
            onTap: () {
              _showDialog(context);
            },
          ),
          InkWell(child: card1('Multi Player'),onTap: (){
            Navigator.pushNamed(context, '/inviteLobby');
          },),
          card1('Couple'),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Center(
              //   child: Container(
              //     width: MediaQuery.of(context).size.width - 300,
              //     height: MediaQuery.of(context).size.width - 300,
              //     child: CircleAvatar(
              //         child: Image(
              //             image: NetworkImage(
              //                 'https://www.google.com/url?sa=i&url=https%3A%2F%2Ftowardsdatascience.com%2F3-numpy-image-transformations-on-baby-yoda-c27c1409b411&psig=AOvVaw2utT4p2YUteFvMj-hu98qM&ust=1587894640561000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPDZotKmg-kCFQAAAAAdAAAAABAD'))),
              //   ),
              // ),
              card1("About App"),
              card1("Help"),
              card1("Settings")
            ],
          ),
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 2,
          child: AlertDialog(
            title: Text("Choose the type of Game"),
            content: Column(
              children: <Widget>[
                RaisedButton(
                  child: Text("Who Am I"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/whoAmI');
                  },
                ),
                RaisedButton(
                  child: Text("Guess It"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/guessIt');
                  },
                )
              ],
            ),
          ),
        );
      });
}

Widget card1(String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: ListTile(
        leading: Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
        title: Text(text),
      ),
    ),
  );
}
