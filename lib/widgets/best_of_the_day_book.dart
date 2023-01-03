import 'package:flutter/material.dart';

import './book_rating.dart';

class BestOfTheDayBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headline4,
              children: [
                TextSpan(text: 'Best of the '),
                TextSpan(
                  text: 'day',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 20),
            width: double.infinity,
            height: mediaQuery.size.height * 0.28,
            //height: 190,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 20,
                      top: 15,
                      bottom: 5,
                    ),
                    width: double.infinity,
                    height: mediaQuery.size.height * 0.25,
                    //height: 170,
                    decoration: BoxDecoration(
                      color: Color(0xFFEAEAEA).withOpacity(0.45),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'New York Time Best for 11th \nMarch 2020',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF8F8F8F),
                          ),
                        ),
//                        SizedBox(
//                          height: 5,
//                        ),
                        Text(
                          'How to win \nFriends & Influence',
                          style: Theme
                              .of(context)
                              .textTheme
                              .headline6,
                        ),
//                        SizedBox(
//                          height: 5,
//                        ),
                        Text(
                          'Gray Venchuk',
                          style: TextStyle(
                            color: Color(0xFF8F8F8F),
                          ),
                        ),
//                        SizedBox(
//                          height: 5,
//                        ),
                        Row(
                          children: <Widget>[
                            BookRating('3.9'),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                "When the earth was flat and everyone \nwanted to win the game of the \nbest and people….",
                                style: TextStyle(
                                  color: Color(0xFF8F8F8F),
                                  fontSize: 10,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Image.asset(
                    'assets/images/book3.png',
                    width: 140,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SizedBox(
                      height: 40,
                      width: mediaQuery.size.width * .3,
                      child: GestureDetector(
                        onTap: () {
                          //....
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: Color(0xFF393939),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              )),
                          child: Text(
                            'Read',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
