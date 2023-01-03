
import 'package:ebook/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BooksYouMayLikeAlso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
              style: Theme.of(context).textTheme.headline5,
              children: [
                TextSpan(
                  text: 'You might also ',
                ),
                TextSpan(
                  text: 'like...',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
          ),
        ),
        SizedBox(height: 20,),
        Stack(
          children: <Widget>[
            Container(
              height: 180,
              width: double.infinity,
              
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 25, top: 25, right: 150),
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFFFF8F9),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Color(0xFF393939)),
                        children: [
                          TextSpan(
                            text:
                            "How To Win \nFriends & Influence \n",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: "Gary Venchuk",
                            style: TextStyle(color: Color(0xFF8F8F8F)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        BookRating(
                          '4.9'
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .015,
                            ),
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Read",
                                style:
                                TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset('assets/images/book3.png', width: 150,),
            )
          ],
        )
      ],
    );
  }
}
