import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesPageView extends StatefulWidget {
  final String noteName;

  NotesPageView(this.noteName);

  @override
  _NotesPageViewState createState() => _NotesPageViewState();
}

class _NotesPageViewState extends State<NotesPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.noteName),
      ),
    );
  }
}
