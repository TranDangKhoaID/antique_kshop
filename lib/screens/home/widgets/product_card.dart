import 'package:antique_shop/constants.dart';
import 'package:antique_shop/models/product.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kcontentColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(15),
                Center(
                  child: Image.asset(
                    product.image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Gap(10),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    product.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      //fontSize: 16,
                    ),
                  ),
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\$${product.price}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        product.colors.length,
                        (index) => Container(
                          width: 18,
                          height: 18,
                          margin: const EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                            color: product.colors[index],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
