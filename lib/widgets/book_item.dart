import 'package:ebook/screens/book_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './book_rating.dart';
import './tow_side_rounded_buttons.dart';


class BooKItem extends StatelessWidget {
  final String id;
  final String name;
  final String auth;
  final String image;
  final String rate;
  BooKItem(this.id, this.name, this.auth, this.image, this.rate,);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      width: 210,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 210,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 5,
                      color: Color(0xFFD3D3D3).withOpacity(.84),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Image.asset(
              image,
              width: 130,
            ),
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  onPressed: () {
                    //.....
                  },
                ),
                BookRating(rate),
              ],
            ),
          ),
          Positioned(
            top: 140,
            child: Container(
              width: 170,
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(color: Color(0xFF393939)),
                        children: [
                          TextSpan(
                            text: name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          TextSpan(
                            text: auth,
                            style: TextStyle(
                              color: Color(0xFF8F8F8F),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          TowSideRoundedButtons(
            () {
              Navigator.of(context).pushNamed(
                BookDetailsScreen.routeName,
                arguments: id,
              );
            },
          ),
        ],
      ),
    );
  }
}
