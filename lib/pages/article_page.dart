import 'package:flutter/material.dart';
import 'package:blog_app/model/article.dart';
import 'package:blog_app/widgets/article_content.dart';
import 'package:blog_app/pages/comments_page.dart';

class ArticlePage extends StatelessWidget {
  final Article _article;

  ArticlePage(this._article);

  void _presentComments(BuildContext context) {
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context) =>
        new CommentsPage(_article.comments)));
  }

  Widget _buildBottomBar(BuildContext context) {
    return new Container(
      height: 70.0,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: new Row(
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.close),
              onPressed: () => print("Close button touched")),
          new Expanded(child: new Container()),
          new IconButton(
              icon: new Icon(Icons.comment),
              onPressed: () => _presentComments(context)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(
      children: <Widget>[
        new Expanded(
          child: new ArticleContent(_article),
        ),
        _buildBottomBar(context),
      ],
    ));
  }
}
