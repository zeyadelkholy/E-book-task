import 'package:flutter/material.dart';

class Book {
  final String id;
  final String bookName;
  final String authName;
  final String image;
  final String rating;
//  final List<String> chaptersNum;
//  final List<String> chaptersNames;
//  final List<String> chaptersTags;
  Book({
    @required this.id,
    @required this.bookName,
    @required this.authName,
    @required this.image,
    @required this.rating,
//    @required this.chaptersNum,
//    @required this.chaptersNames,
//    @required this.chaptersTags,
  });
}



class BookProvider with ChangeNotifier {
  List<Book> _items = [
    Book(
        id: 'b1',
        bookName: 'Crushing & Influence\n',
        image: 'assets/images/book1.png',
        authName: 'Gary Venchuk',
        rating: '4.9',
    ),
    Book(
      id: 'b2',
      bookName: 'Top 10 Business Hacks\n',
      authName: 'Gary Venchuk',
      image: 'assets/images/book2.png',
      rating: '4.5',
    ),
    Book(
      id: 'b3',
      bookName: 'How to win Frinds\n',
      authName: 'Gary Venchuk',
      image: 'assets/images/book3.png',
      rating: '3.9',
    ),
  ];

  List<Book> get items {
    return [..._items];
  }

  void addBook() {
    notifyListeners();
  }
}
