import 'package:flutter/material.dart';

class TowSideRoundedButtons extends StatelessWidget {



  final VoidCallback onTap;
  TowSideRoundedButtons(this.onTap);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: onTap,
                child: Container(
                  width: 90,
                  //width: MediaQuery.of(context).size.width * .25,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.center,
                  child: Text('Details'),
                ),
              ),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  width: 90,
                  alignment: Alignment.center,
                  //padding: EdgeInsets.symmetric(vertical: 10),
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
            ],
          ),
        ),
      ),
    );
  }
}
