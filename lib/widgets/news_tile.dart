import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: CachedNetworkImage(
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            imageUrl: articleModel.image ?? 'Unable to load image',
            placeholder: (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          // child:Image.network(
          //   articleModel.image ?? 'Unable to load image',
          //   height: 200,
          //   width: double.infinity,
          //   fit: BoxFit.cover,
          // ),
        ),
        SizedBox(
          height: 12.0,
        ),
        Text(
          articleModel.title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          articleModel.subTitle ?? 'No description',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
