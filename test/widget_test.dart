import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class NotesView extends StatefulWidget {

  @override
  _NotesViewState createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  String pdfUrl="";
  int index=1;

  @override
  void initState() {
    FirebaseStorage.instance.ref("eGr13TG ICT.pdf").getDownloadURL().then((value){
      setState(() {

        pdfUrl=value;
      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Center(
          child: AspectRatio(
            aspectRatio: 100/180,
            child: const PDF(


            ).cachedFromUrl(

              pdfUrl,
              placeholder: (double progress) => Center(child: Text('$progress %')),
              errorWidget: (dynamic error) => Center(child: Text(error.toString())),
            ),
          )

      ),
    );
  }
}


class LoadingView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading"),
      ),
    );
  }
}

