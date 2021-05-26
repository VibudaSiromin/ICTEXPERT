import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
class teachersGuidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teachers Guide"),
      ),
    );
  }
}
// class teachersGuidePage extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     Uint8List ImageFile;
//
//
//     return  Scaffold(
//       body: Center(
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("images/b.png"),
//               fit: BoxFit.fill,
//             ),
//           ),
//
//
//           child: SafeArea(
//             child: Container(
//
//               margin: EdgeInsets.symmetric(vertical: 20.0),
//               height: 200.0,
//               child: ListView.builder(
//
//                   itemCount: 100,
//                   itemBuilder: (context,index){
//                 return Image.memory(getData(index));
//             }
//             )
//
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//    getData(int index)  {
//      FirebaseStorage storage = FirebaseStorage.instance;
//      Reference ref = storage.ref().child("TeachersGuide");
//     int ImageCount=index+1;
//     return ref.child("eGr12TG ICT-00$ImageCount.jpg").getData(10244).then((data){
//
//         return data;
//
//     });
//   }
// }



