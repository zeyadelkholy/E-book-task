import 'package:flutter/material.dart';

import 'home_screen.dart';
class SplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Bitmap.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.headline2,
                  children: [
                    TextSpan(
                      text: 'flamin',
                    ),
                    TextSpan(
                      text: 'go.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 30,
                        color: Color(0xFF666666).withAlpha(11),
                      )
                    ]),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Start reading',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
