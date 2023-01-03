import 'package:ebook/widgets/best_of_the_day_book.dart';
import 'package:ebook/widgets/book_item.dart';
import 'package:ebook/widgets/continue_reading_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/book_provider.dart';

class HomeScreen extends StatelessWidget {

  static const routeName = '/home-screen';
  @override
  Widget build(BuildContext context) {
    final book = Provider.of<BookProvider>(context).items;
    final mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/main_page.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: mediaQuery.size.height * 0.10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(text: 'What are you \nreading '),
                        TextSpan(
                          text: 'today?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    height: 240,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: book.length,
                      itemBuilder: (ctx, i) => BooKItem(
                        book[i].id,
                        book[i].bookName,
                        book[i].authName,
                        book[i].image,
                        book[i].rating,
                      ),)
                ),

                SizedBox(height: 20),
                BestOfTheDayBook(),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(
                            text: 'Continue ',
                          ),
                          TextSpan(
                            text: 'reading...',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ]
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ContinueReadingCard(),
                SizedBox(height: 40,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
