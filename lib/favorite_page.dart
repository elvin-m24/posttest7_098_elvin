import 'package:flutter/material.dart';
import 'package:posttest7_098_elvin/provider/wishlist_provider.dart';
import 'package:posttest7_098_elvin/wishlist_card.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = WishlistProvider();
    Widget header() {
      return AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Favorite Guitars',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget WishlistKosong() {
      return Expanded(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/electric-guitar.png',
                width: 80,
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                'You don\'t have favorite guitar',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Find your favorite guitar now!',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 24,
                    ),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Explore Store',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget WishlistBerisi() {
      return Expanded(
        child: Container(
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            children: wishlistProvider.wishlist
                .map(
                  (product) => WishlistCard(product),
                )
                .toList(),
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // WishlistKosong(),
        WishlistBerisi(),
      ],
    );
  }
}
