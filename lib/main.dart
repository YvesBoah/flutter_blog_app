import 'package:blog_app/pages/article_page.dart';
import 'package:blog_app/pages/comments_page.dart';
import 'package:blog_app/injector/placeholder_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Blog App",
    home: new ArticlePage(ArticleInjector.shared.article),
  ));
}
