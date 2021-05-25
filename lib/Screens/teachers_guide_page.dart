import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class teachersGuidePage extends StatelessWidget {
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
      body: Container(
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
                  "Teachers' Guide",
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
                      'images/dcard.png',
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
                    child: ListTile(title: Text(noteName[index])),
                  );
                }, childCount: 12))
          ],
        ),
      ),
    );
  }
}

