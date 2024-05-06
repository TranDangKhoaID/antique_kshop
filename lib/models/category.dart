class Category {
  final String id;
  final String title;
  final String image;

  Category({
    required this.id,
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(id: "0", title: "Shoes", image: "assets/images/shoes.png"),
  Category(id: "1", title: "Beauty", image: "assets/images/beauty.png"),
  Category(
    id: "2",
    title: "women's\nFashion",
    image: "assets/images/image1.png",
  ),
  Category(id: "3", title: "Jewelry", image: "assets/images/jewelry.png"),
  Category(id: "4", title: "men's\nFashion", image: "assets/images/men.png"),
];
