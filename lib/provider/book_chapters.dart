import 'package:flutter/material.dart';

class BookChapters {
  final String id;
  final List<String> chapterNum;
  final List<String> names;
  final List<String> tags;

  BookChapters({
    @required this.id,
    @required this.chapterNum,
    @required this.names,
    @required this.tags,
  });
}

class BookChaptersProvider with ChangeNotifier {
  List<BookChapters> _chapterItems = [
    BookChapters(
      id: 'b1',
      chapterNum: [
        'Chapter 1',
        'Chapter 2',
        'Chapter 3',
        'Chapter 4',
      ],
      names: [
        'Money',
        'Power',
        'Influence',
        'Win',
      ],
      tags: [
        'Life is about change',
        'Everything loves power',
        'Influence easily like never before0',
        'Winning is what matters',
      ],
    ),
    BookChapters(
      id: 'b2',
      chapterNum: [
        'Chapter 1',
        'Chapter 2',
      ],
      names: [
        'Money',
        'Power',
      ],
      tags: [
        'Life is about change',
        'Everything loves power',
      ],
    ),
    BookChapters(
      id: 'b3',
      chapterNum: [
        'Chapter 1',
        'Chapter 2',
        'Chapter 3',
      ],
      names: [
        'Money',
        'Power',
        'Influence',
      ],
      tags: [
        'Life is about change',
        'Everything loves power',
        'Influence easily like never before0',
      ],
    ),
  ];

  List<BookChapters> get chapterItems {
    return [..._chapterItems];
  }

  void addChapter() {
    notifyListeners();
  }
}
