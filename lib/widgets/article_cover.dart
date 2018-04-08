import 'package:flutter/material.dart';
import 'package:blog_app/model/article.dart';
import 'package:blog_app/ui_model/text_styles.dart';

class ArticleCover extends StatelessWidget {
  final Article _article;
  final double _height;

  ArticleCover(this._article, this._height);

  Widget _buildArticleTextList() {
    return new Container(
      padding: const EdgeInsets.only(
          bottom: 40.0, left: 30.0, right: 60.0, top: 30.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // ¬ AUTHOR TEXT
          new Text(
            _article.author.toUpperCase(),
            style: articleCoverAuthorStyle,
          ), // Text
          new Padding(padding: const EdgeInsets.only(top: 20.0)),
          // ¬ ARTICLE TITLE TEXT
          new Text(
            _article.title.toUpperCase(),
            style: articleCoverTitleStyle,
            overflow: TextOverflow.clip,
          ),
          new Padding(padding: const EdgeInsets.only(top: 30.0)),
          // ¬ TAG TEXT
          new Container(
            padding: const EdgeInsets.all(10.0),
            color: Colors.white,
            child: new Text(
              _article.tag.toUpperCase(),
              style: articleCoverTagStyle,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: _height,
      child: _buildArticleTextList(),
    ); // Container
  }
}
