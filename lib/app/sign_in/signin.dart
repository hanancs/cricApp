import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:timer/app/sign_in/signin_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'social_signin.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key, @required this.onSignIn}) : super(key: key);
  final void Function(User) onSignIn;

  Future<void> _signInAnonymously() async {
    try {
      final userCredential = await FirebaseAuth.instance.signInAnonymously();
      onSignIn(userCredential.user);
      // print('${userCredential.user.uid}');
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CRIC APP-U',
        ),
        centerTitle: true,
        elevation: 4.0,
        leading: Image.asset('images/cricapptran.png'),
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[100],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "You've reached world's best cricket analysis app",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10.0),
          Image.asset(
            'images/cricapp.png',
            height: 150,
          ),
          SizedBox(height: 10.0),
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            text: 'Sign in with Google',
            color: Colors.white,
            textColor: Colors.black54,
            onPressed: () {},
          ),
          SizedBox(height: 10.0),
          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            text: 'Sign in with Facebook',
            color: Color(0xFF334D92),
            textColor: Colors.white,
            onPressed: () {},
          ),
          SizedBox(height: 10.0),
          SocialSignInButton(
            assetName: 'images/email.png',
            text: 'Sign in with Email',
            color: Colors.teal[700],
            textColor: Colors.white,
            onPressed: () {},
          ),
          SizedBox(height: 10.0),
          Text(
            'or',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15.0),
          ),
          SizedBox(height: 10.0),
          SignInButton(
            text: 'Go Annoymous!',
            color: Colors.yellow,
            textColor: Colors.black54,
            onPressed: _signInAnonymously,
          ),
          SizedBox(height: 35.0),
          Text(
            '© Calistus, 2021',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
