import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 30,
        bottom: 30,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/Pac612.jpg',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Electric Guitar',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'PAC612 VIIFMX',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Rp7,972,000',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.favorite_border_rounded,
              color: Colors.orange,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Product Added'),
                    content: Text('This product is added to favorites.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Close',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
