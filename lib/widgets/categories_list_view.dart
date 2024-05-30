import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      categoryImage: 'assets/business.avif',
      categoryName: 'Business',
    ),
    CategoryModel(
      categoryImage: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      categoryImage: 'assets/general.avif',
      categoryName: 'General',
    ),
    CategoryModel(
      categoryImage: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      categoryImage: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      categoryImage: 'assets/sports.avif',
      categoryName: 'Sports',
    ),
    CategoryModel(
      categoryImage: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
