import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 22.0, right: 10.0, left: 10.0,),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(category: category,),
          ],
        ),
      ),
    );
  }
}
