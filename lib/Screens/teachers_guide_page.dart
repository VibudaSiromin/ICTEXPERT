import 'dart:typed_data';
import 'package:ict_expert/globles.dart';

import 'package:ict_expert/DataHolder.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class teachersGuidePage extends StatefulWidget {
  @override
  _teachersGuidePageState createState() => _teachersGuidePageState();
}

class _teachersGuidePageState extends State<teachersGuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/b.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: SafeArea(
            child: InteractiveViewer(
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: ListView.builder(
                      itemCount: getIndex(),
                      itemBuilder: (context, index) {
                        return ImageGridItem(index + 1); //image return
                      })),
            ),
          ),
        ),
      ),
    );
  }

  getIndex() {
    if (isEnglish) {
      return 208;
    } else {
      return 259;
    }
  }
}

class ImageGridItem extends StatefulWidget {
  int index = 1;

  ImageGridItem(int i) {
    this.index = i;
  }

  @override
  _ImageGridItemState createState() => _ImageGridItemState();
}

class _ImageGridItemState extends State<ImageGridItem> {
   Uint8List ? imageFile;


  Reference photosReference =
      FirebaseStorage.instance.ref().child(getNameChild1());

  Future getImage() async {
    if (!imageData.containsKey(widget.index)) {
      await photosReference
          .child(getNameChild2())
          .getData(2 * 1024 * 1024)
          .then((data) {
        this.setState(() {
          imageFile = data!;

        });
        imageData.putIfAbsent(widget.index, () {
          requestedIndexes.add(widget.index);
          // StoreFutureImages(widget.index);

          return imageFile!;
        });
      }).catchError((error) {
        print(error);
      });
    } else {
      imageFile = imageData[widget.index]!;
    }
  }

  @override
  void initState() {
    super.initState();
    if (!imageData.containsKey(widget.index)) {
      getImage();
    } else {
      this.setState(() {
        imageFile = imageData[widget.index]!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (imageFile==null) {
     return
        JumpingDotsProgressIndicator(
          fontSize: 100.0,
        );




    } else {
      return Image.memory(
        imageFile!,
        fit: BoxFit.cover,
      );
    }
  }

  String CreateFinalIndex(int index) {
    int index_length = widget.index.toString().length;
    String zero_number = "0" * ((3 - index_length));
    String Final_Index = (zero_number + widget.index.toString());
    return Final_Index;
  }

  // void StoreFutureImages(int index) {
  //   String FinalIndex = CreateFinalIndex(widget.index+1);
  //   photosReference
  //       .child("eGr12TG ICT-$FinalIndex.jpg")
  //       .getData(2 * 1024 * 1024)
  //       .then((data) {
  //
  //       var imageFileFuture = data!;
  //
  //     imageData.putIfAbsent(widget.index, () {
  //       requestedIndexes.add(widget.index+1);
  //       return imageFileFuture;
  //
  //     });
  //   }).catchError((error) {
  //     print(error);
  //   });
  //
  // }

  static getNameChild1() {
    if (isEnglish) {
      return "TeachersGuide";
    } else {
      return "TeachersGuideSinhala";
    }
  }

  String getNameChild2() {
    String Final_Index = CreateFinalIndex(widget.index);
    if (isEnglish) {
      return "eGr12TG ICT-$Final_Index.jpg";
    } else {
      return "sGr12TG ICT-$Final_Index.jpg";
    }
  }
}
