import 'package:flutter/material.dart';

class TinderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: 150,
              height: 150,
              child: GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          "I couldn't find any tinder logo with a proper background transparency so I stuck with this one"),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/tinder.png',
                ),
              ),
            ),
            Container(height: 25.0),
            Text(
              'Location Changer',
              style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Container(height: 10.0),
            Text(
              "Some other text I can't read",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Container(height: 20.0),
            ElevatedButton(
              onPressed: () {
                print('Login with facebook...');
              },
              child: Text('Login with Facebook'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
          ],
        ));
  }
}
