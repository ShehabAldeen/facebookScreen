import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';


class FacebookLogin extends StatelessWidget {
  static const routName = 'FacebookLogin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[900],
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(
              flex: 2,
            ),
            Icon(
              Icons.facebook_sharp,
              size: 70,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email or phone',
                hintStyle: TextStyle(color: Colors.white38, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.white38, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[800])),
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routName);
                },
                child: Text('LOGIN')),
            Spacer(
              flex: 4,
            ),
            Text(
              'Sign up for facebook',
              style: TextStyle(color: Colors.white, fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Text(
              'Forget a password?',
              style: TextStyle(color: Colors.white, fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
