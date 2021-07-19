import 'package:flutter/material.dart';
import 'package:flutter_time_tracker_course/app/sign_in/sign_in_button.dart';
import 'package:flutter_time_tracker_course/app/sign_in/social_sign_in_button.dart';

//omar omar
class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Time Tracker'), elevation: 3.0, centerTitle: true),
      //when you use private method that instance can't be accessed outside of the file which declared in
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }
}

Widget _buildContent() {
  return Container(
    padding: EdgeInsets.all(16),
    color: Colors.white10,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Sign in',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.w600,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 1.0,
                color: Color.fromARGB(100, 0, 0, 0),
              )
            ],
          ),
        ),
        SizedBox(height: 48.0),
        SocialSignInButton(
            assetName: 'images/G.png',
            text: 'Sign in with google',
            color: Colors.white,
            textColor: Colors.black,
            onPressed: () {}),
        SizedBox(height: 8.0),
        SocialSignInButton(
            assetName: 'images/fb.png',
            text: 'Sign in with facebook',
            color: Colors.blue,
            textColor: Colors.black,
            onPressed: () {}),
        SizedBox(height: 8.0),
        SignInButton(
          textColor: Colors.white,
          text: 'Sign in with email',
          color: (Colors.teal[700])!,
          onPressed: () {},
        ),
        SizedBox(height: 8.0),
        Center(
          child: Text(
            'or',
            //style: TextStyle(fontSize: 14),
          ),
        ),
        SizedBox(height: 8.0),
        SignInButton(
          textColor: Colors.white,
          text: 'Go anonymous',
          color: (Colors.lime[600])!,
          onPressed: () {},
        ),
      ],
    ),
  );
}
