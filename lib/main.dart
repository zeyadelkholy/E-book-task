import 'package:ebook/provider/book_chapters.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/book_provider.dart';
import 'screens/book_details.dart';
import 'screens/home_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: BookProvider(),),
        ChangeNotifierProvider.value(value: BookChaptersProvider(),),
      ],
      child: MaterialApp(
        title: 'E book',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: Theme.of(context).textTheme.apply(
            displayColor: Color(0xFF393939),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          HomeScreen.routeName: (ctx) => HomeScreen(),
          BookDetailsScreen.routeName: (ctx) => BookDetailsScreen(),

        },
      ),
    );
  }
}

