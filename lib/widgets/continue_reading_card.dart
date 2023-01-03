import 'package:flutter/material.dart';

class ContinueReadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 33,
              color: Color(0xFFD3D3D3).withOpacity(.84),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(38.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding:
                  EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.end,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Crushing & Influence",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Gary Venchuk",
                              style: TextStyle(
                                color: Color(0xFF8F8F8F),
                              ),
                            ),
                            Align(
                              alignment:
                              Alignment.bottomRight,
                              child: Text(
                                "Chapter 7 of 10",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF8F8F8F),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/images/book1.png",
                        width: 55,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 8,
                width: mediaQuery.size.width * .65,
                decoration: BoxDecoration(
                  color: Color(0xFFBE7066),
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
