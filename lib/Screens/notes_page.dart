import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'NotesPageView.dart';

class notesPage extends StatefulWidget {
  @override
  _notesPageState createState() => _notesPageState();
}

class _notesPageState extends State<notesPage> {
  final List noteName = [
    "Elemental Concepts of ICT",
    "Evolution of Computer Equipments",
    "Representation of Computer Data and Instructions",
    "Basic Digital Circuits and Devices",
    "Operating Systems",
    "Data Communication and Computer Networking",
    "System Concept",
    "Database Management",
    "Programming",
    "Web Development",
    "Internet of Things",
    "ICT in Business",
    "New Trends and Future Directions",
  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 600) {
                return _buildWideContainers();
              } else {
                return _buildNormalContainer();
              }
      },

      ),

    );
  }

  Widget _buildWideContainers() {
    final width=MediaQuery.of(context).size.width;
    return Center(
      child:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/b.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
              backgroundColor: Color.fromARGB(100, 98, 80, 61),
              pinned: true,
              expandedHeight: 600.0,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: [StretchMode.fadeTitle],
                centerTitle: true,
                title: Text(
                  "Notes",
                  style: GoogleFonts.mateSc(
                    textStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        letterSpacing: .5,
                        fontSize: width * 0.08,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                background: DecoratedBox(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Color.fromARGB(255, 98, 80, 61),
                              Color.fromARGB(15, 98, 80, 61),
                            ])),
                    position: DecorationPosition.foreground,
                    child: Image.asset(
                      'images/acard.png',

                    )),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Card(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    elevation: 1,
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 15, 0, 15),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotesPageView(noteName[index])),
                          );
                        },


                          title: Text(
                            noteName[index],
                            style: GoogleFonts.mateSc(
                              textStyle: TextStyle(
                                  color: Color.fromARGB(185, 0, 0, 0),
                                  letterSpacing: .5,
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  );
                }, childCount: 12))
          ],
        ),
      ) ,
    );
  }

  Widget _buildNormalContainer() {
  final width=MediaQuery.of(context).size.width;
    return Center(
      child:Container(
       width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/b.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              )),
              backgroundColor: Color.fromARGB(100, 98, 80, 61),
              pinned: true,
              expandedHeight: 250.0,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: [StretchMode.fadeTitle],
                centerTitle: true,
                title: Text(
                  "Notes",
                  style: GoogleFonts.mateSc(
                    textStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        letterSpacing: .5,
                        fontSize: width * 0.08,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                background: DecoratedBox(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                          Color.fromARGB(255, 98, 80, 61),
                          Color.fromARGB(15, 98, 80, 61),
                        ])),
                    position: DecorationPosition.foreground,
                    child: Image.asset(
                      'images/acard.png',
                    )),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return Card(
                elevation: 1,
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                      title: Text(
                    noteName[index],
                    style: GoogleFonts.mateSc(
                      textStyle: TextStyle(
                          color: Color.fromARGB(185, 0, 0, 0),
                          letterSpacing: .5,
                          fontSize: width * 0.056,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                ),
              );
            }, childCount: 12))
          ],
        ),
      ) ,
      );
}



}


