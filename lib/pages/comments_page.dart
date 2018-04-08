import 'package:flutter/material.dart';
import 'package:blog_app/model/comment.dart';
import 'package:blog_app/ui_model/text_styles.dart';
import 'package:blog_app/widgets/comment_tile.dart';

class CommentsPage extends StatelessWidget {
  final List<Comment> _comments;

  CommentsPage(this._comments);

  void _dismissComments(BuildContext context) {
    Navigator.pop(context);
  }

  Widget _buildTopBar(BuildContext context) {
    return new Container(
      height: 70.0,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: Colors.white,
      child: new Stack(children: <Widget>[
        // ¬ "COMMENTS" LABEL
        new Center(
          child: new Text(
            "COMMENTS (${_comments.length})",
            style: subtitleTextStyle,
          ),
        ),
        // ¬ CLOSE BUTTON
        new Row(
          children: <Widget>[
            new Expanded(child: new Container()),
            new IconButton(
                icon: new Icon(Icons.close),
                onPressed: () => _dismissComments(context)),
          ],
        ),
      ]),
    );
  }

  Widget _buildCommentsList() {
    return new ListView.builder(
        itemCount: _comments.length,
        itemBuilder: (BuildContext context, int index) {
          final Comment comment = _comments[index];
          return new CommentTile(comment);
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Padding(padding: const EdgeInsets.only(top: 15.0)),
            _buildTopBar(context),
            new Expanded(child: _buildCommentsList()),
          ],
        ));
  }
}
