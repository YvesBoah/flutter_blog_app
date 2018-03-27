import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

class Article {
  String title;
  String author;
  String tag;
  String text;
  Image image;

  Article(
      {@required this.title,
        @required this.author,
        @required this.tag,
        @required this.text,
        @required this.image});
}