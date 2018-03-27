import 'package:flutter/material.dart';
import 'package:blog_app/model/article.dart';
import 'package:blog_app/widgets/article_cover.dart';

class ArticlePage extends StatelessWidget {
  final Article _article;

  ArticlePage(this._article);

  Widget _buildBottomBar() {
    return new Container(
      height: 70.0,
      color: Colors.white,
      // Définit la zone tampon entre la bordure du Container et les Widgets qui seront imbriqués dedans
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: new Row(
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.close),
              onPressed: () => print("Close button touched")),
          new Expanded(child: new Container()),
          new IconButton(
              icon: new Icon(Icons.comment),
              onPressed: () => print("Comments button touched")),
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
          // On remplace ici le placeholder par notre nouveau widget
          child: new ArticleCover(_article),
        ),
        _buildBottomBar(),
      ],
    ));
  }
}
