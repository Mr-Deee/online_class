import 'package:flutter/material.dart';
import 'package:online_class/widgets/comment_composer_student.dart';

class StreamTab extends StatefulWidget {
  String className;
  Color uiColor;

  StreamTab({required this.className, required this.uiColor});

  @override
  _StreamTabState createState() => _StreamTabState();
}

class _StreamTabState extends State<StreamTab> {
  @override
  Widget build(BuildContext context) {
    return CommentComposer(widget.className);
  }
}
