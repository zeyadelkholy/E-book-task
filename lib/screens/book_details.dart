
import 'package:ebook/provider/book_chapters.dart';
import 'package:ebook/provider/book_provider.dart';
import 'package:ebook/widgets/book_info_details.dart';
import 'package:ebook/widgets/books_you_may_like_also.dart';
import 'package:ebook/widgets/chapters_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class BookDetailsScreen extends StatelessWidget {
  static const routeName = '/book-details';

  @override
  Widget build(BuildContext context) {

    final bookId = ModalRoute.of(context).settings.arguments as String;
    final book = Provider.of<BookProvider>(context).items;
    final bookChapters = Provider.of<BookChaptersProvider>(context).chapterItems;
    final bookData = book.firstWhere((b) => b.id == bookId);
    final bookChapterData = bookChapters.firstWhere((c) => c.id == bookId);

    var mediaQuery = MediaQuery.of(context);
    var chaptersNum = bookChapterData.chapterNum.length;

    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(
                            top: mediaQuery.size.height * .14,
                            left: mediaQuery.size.width * .1,
                            right: mediaQuery.size.width * .02),
                        height: mediaQuery.size.height * .54,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Bitmap2.png"),
                            fit: BoxFit.fitWidth,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        child: BookInfoDetails(bookData.image, bookData.bookName)),
                    Padding(
                      padding: EdgeInsets.only(top: mediaQuery.size.height * 0.4),
                      child: SafeArea(
                        child: Container(
                          decoration: BoxDecoration(),
                          height: chaptersNum == 2 ? 200 : 300,
                          child: ListView.builder(
                            itemCount: chaptersNum,
                            itemBuilder: (ctx, i) => ChaptersCard(
                              chapterNum: bookChapterData.chapterNum[i],
                              chapterName: bookChapterData.names[i],
                              tag: bookChapterData.tags[i],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: BooksYouMayLikeAlso(),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          )),
    );
  }
}
