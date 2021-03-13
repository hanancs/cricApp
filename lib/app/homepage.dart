import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timer/app/HomeComponents/homecompo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key, @required this.onSignOut}) : super(key: key);
  final VoidCallback onSignOut;

  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      onSignOut();
      // print('${userCredential.user.uid}');
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cric App-U'),
        centerTitle: true,
        elevation: 1.0,
        leading: Image.asset('images/cricapptran.png'),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Sign Out',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
            onPressed: _signOut,
          )
        ],
      ),
      body: buildPadding(),
    );
  }

  Padding buildPadding() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          HomeCompo(
            text: 'Demstyfying Batting Average',
            assetName: 'images/batting.png',
            color: Colors.yellow[200],
            textColor: Colors.black54,
            onPressed: () {},
          ),
          SizedBox(height: 20.0),
          HomeCompo(
            text: 'Unbounding Bowling Average',
            assetName: 'images/bowling.png',
            color: Colors.yellow[200],
            textColor: Colors.black54,
            onPressed: () {},
          ),
          SizedBox(height: 20.0),
          HomeCompo(
            text: 'A Glance at D/L Law',
            assetName: 'images/law.png',
            color: Colors.yellow[200],
            textColor: Colors.black54,
            onPressed: () {},
          ),
          SizedBox(height: 20.0),
          HomeCompo(
            text: 'Teams Rankings & Ratings',
            assetName: 'images/rating.png',
            color: Colors.yellow[200],
            textColor: Colors.black54,
            onPressed: () {},
          ),
          SizedBox(height: 20.0),
          HomeCompo(
            text: 'Individuals Rankings & Ratings',
            assetName: 'images/rating.png',
            color: Colors.yellow[200],
            textColor: Colors.black54,
            onPressed: () {},
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
