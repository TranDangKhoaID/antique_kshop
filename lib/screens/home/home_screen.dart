import 'package:antique_shop/constants.dart';
import 'package:antique_shop/models/product.dart';
import 'package:antique_shop/screens/home/widgets/category.dart';
import 'package:antique_shop/screens/home/widgets/home_app_bar.dart';
import 'package:antique_shop/screens/home/widgets/image_slider.dart';
import 'package:antique_shop/screens/home/widgets/product_card.dart';
import 'package:antique_shop/screens/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlide = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(35),
              //for custom app bat
              const CustomAppBar(),
              const Gap(15),
              //for seatch bar
              const MySearchBar(),
              const Gap(20),
              //for image slider
              ImageSlider(
                onChange: (p0) {
                  setState(() {
                    currentSlide = p0;
                  });
                },
                currentSlide: currentSlide,
              ),
              const Gap(20),
              //for category selection
              const Categories(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For You",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Gap(5),
              //for shopping
              GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: products.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index]);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
