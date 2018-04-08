import 'package:blog_app/model/profile.dart';
import 'package:meta/meta.dart';

class Comment {
  String content;
  String timeSinceComment;
  Profile profile;

  Comment(
      {@required this.content,
        @required this.timeSinceComment,
        @required this.profile});
}