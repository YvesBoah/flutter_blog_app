import 'package:flutter/material.dart';
import 'package:blog_app/model/article.dart';
import 'package:blog_app/widgets/article_cover.dart';
import 'package:blog_app/ui_model/text_styles.dart';

class ArticleContent extends StatelessWidget {
  final Article _article;

  ArticleContent(this._article);

  @override
  Widget build(BuildContext context) {
    final double coverHeight = MediaQuery.of(context).size.height - 70.0;

    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        _article.image,
        new Container(color: Colors.black.withOpacity(0.2)),
        // ¬ TEXT CONTENT
        new SingleChildScrollView(
          // Avoid bouncing
          physics: new ClampingScrollPhysics(),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // TODO: ¬ COVER
              new ArticleCover(_article, coverHeight),
              // ¬ ARTICLE CONTENT
              new Container(
                color: Colors.white,
                child: new Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: new Text(
                    _article.text,
                    style: articleContentTextStyle,
                  ), // Text
                ), // Padding
              ) // Container
            ], // <Widget>
          ), // Column
        ) // SingleChildScrollView
      ],
    );
  }
}