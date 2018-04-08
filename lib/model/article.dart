import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/model/comment.dart';

class Article {
  String title;
  String author;
  String tag;
  String text;
  Image image;
  List<Comment> comments;

  Article(
      {@required this.title,
        @required this.author,
        @required this.tag,
        @required this.text,
        @required this.image,
        @required this.comments});
}