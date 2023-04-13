import 'package:flutter/material.dart';
import 'package:posttest7_098_elvin/favorite_page.dart';
import 'package:posttest7_098_elvin/home_page.dart';
import 'package:posttest7_098_elvin/main_page.dart';
import 'package:posttest7_098_elvin/provider/wishlist_provider.dart';
import 'package:posttest7_098_elvin/splash_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
        routes: {
          '/home_page': (context) => HomePage(),
          '/main_page': (context) => MainPage(),
          '/fav_page': (context) => FavoritePage(),
        },
      ),
    );
  }
}
