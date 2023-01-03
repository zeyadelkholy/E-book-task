import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final String rate;
  BookRating(this.rate);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 7),
            blurRadius: 20,
            color: Color(0xFD3D3D3).withOpacity(.5),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.star,
            size: 18,
            color: Color(0xFFF48A37),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            rate,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
