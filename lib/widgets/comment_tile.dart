import 'package:flutter/material.dart';
import 'package:blog_app/ui_model/text_styles.dart';
import 'package:blog_app/model/comment.dart';

class CommentTile extends StatelessWidget {
  final Comment _comment;

  CommentTile(this._comment);

  Widget _buildAvatar() {
    return new Container(
      height: 50.0,
      width: 50.0,
      child: _comment.profile.image,
    );
  }

  Widget _buildCommentInfo() {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // ¬ USERNAME
            new Text(
              _comment.profile.username,
              style: commentTilePrimaryStyle,
            ),
            new Padding(padding: const EdgeInsets.only(left: 10.0)),
            // ¬ SEPARATOR
            new Container(
              height: 3.0,
              width: 3.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ), // Container
            new Padding(padding: const EdgeInsets.only(left: 10.0)),
            // ¬ TIME SPENT SINCE PUBLICATION
            new Text(
              _comment.timeSinceComment,
              style: commentTileSecondaryStyle,
            ),
          ],
        ),
        new Padding(padding: const EdgeInsets.only(top: 12.0)),
        // ¬ TEXT CONTENT
        new Text(
          _comment.content,
          style: contentTextStyle,
        )
      ], // <Widget>
    ); // Column
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.only(top: 6.0, bottom: 40.0, left: 35.0, right: 20.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildAvatar(),
          new Padding(padding: const EdgeInsets.only(left: 20.0)),
          new Expanded(
            child: _buildCommentInfo(),
          )
        ], // <Widget>
      ), // Column
    ); // Container
  }
}
