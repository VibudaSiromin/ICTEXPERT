import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;

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
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left:15.0),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: CircleAvatar(
                            backgroundImage: AssetImage("images/p.png",)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Hi !",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(color: Colors.white,
                                letterSpacing: .5,
                                fontSize: width*0.05,
                                fontWeight: FontWeight.bold),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text("Welcome to",
                          style: GoogleFonts.robotoSlab(
                            textStyle: TextStyle(color: Color.fromARGB(255, 98, 80, 61),
                                letterSpacing: .5,
                                fontSize: width*0.045,
                                fontWeight: FontWeight.bold),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text("ICT EXPERT",
                          style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(color: Colors.black,
                                letterSpacing: .5,
                                fontSize: width*0.1,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Text(
                        "All GCE A/L Knowledge in One Place",
                        style: GoogleFonts.koHo(
                          textStyle: TextStyle(
                              color: Color.fromARGB(255, 98, 80, 61),
                              letterSpacing: .5,
                              fontSize: width*0.045,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height*0.1,),

                Container(
                  child: Expanded(
                    child: GridView.count(
                      primary: false,
                      padding: EdgeInsets.all(5.0),
                      crossAxisCount:2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 8.0,
                      children: [
                        Card(
                          color: Color.fromARGB(255, 98, 80, 61),
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("images/acard.png",width:width*0.38,),
                              Text("Notes",
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(color: Colors.white,
                                      letterSpacing: .5,
                                      fontSize: width*0.08,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 98, 80, 61),
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("images/bcard.png",width: width*0.3,),
                              Text("GCE A/L Past Papers"
                                ,textAlign: TextAlign.center,
                                  style: GoogleFonts.raleway(
                                         textStyle: TextStyle(color: Colors.white,
                                         letterSpacing: .5,
                                         fontSize: width*0.05,
                                         fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 98, 80, 61),
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("images/ccard.png",width: width*0.34,),
                              Text("Model Papers",
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(color: Colors.white,
                                      letterSpacing: .5,
                                      fontSize: width*0.06,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 98, 80, 61),
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("images/dcard.png",width: width*0.4,),
                              Text("Teachers Guide",
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(color: Colors.white,
                                      letterSpacing: .5,
                                      fontSize: width*0.056,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],),
                  ),
                ),
                SizedBox(height: height*0.01,),


                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('images/f.png',width: width*0.09,),
                        Image.asset('images/i.png',width: width*0.11,),
                        Image.asset('images/t.png',width: width*0.09,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
