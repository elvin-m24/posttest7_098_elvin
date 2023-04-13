import 'package:flutter/material.dart';
import 'package:posttest7_098_elvin/models/product.dart';
import 'package:posttest7_098_elvin/provider/wishlist_provider.dart';
import 'package:provider/provider.dart';

class WishlistCard extends StatelessWidget {
  final Product product;
  const WishlistCard(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              product.image,
              width: lebar / 6,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  product.harga,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              wishlistProvider.setProduct(product);
            },
            child: Icon(
              Icons.favorite_rounded,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
