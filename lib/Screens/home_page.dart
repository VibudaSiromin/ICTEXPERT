import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ict_expert/Screens/model_papers_page.dart';
import 'package:ict_expert/Screens/notes_page.dart';
import 'package:ict_expert/Screens/past_papers_page.dart';
import 'package:ict_expert/Screens/teachers_guide_page.dart';

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
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Colors.white,
                                letterSpacing: .5,
                                fontSize: width*0.08,
                                fontWeight: FontWeight.w900),
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
                        child: Text("ICT\nEXPERT",
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
                SizedBox(height: height*0.05,),

                Container(

                  child: Expanded(
                    child: GridView.count(
                      primary: false,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(5.0),
                      crossAxisCount:2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 8.0,
                      children: [

                        InkWell(

                          child: Card(
                            color: Color.fromARGB(255, 98, 80, 61),
                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("images/acard.png",width:width*0.33,),


                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 8,0 , 0),
                                  child: Text("Notes",

                                    style: GoogleFonts.raleway(
                                      textStyle: TextStyle(color: Colors.white,
                                          letterSpacing: .5,
                                          fontSize: width*0.06,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ),

                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>notesPage()),);
                          }

                          ,
                        ),
                        InkWell(
                          child:Card(
                            color: Color.fromARGB(255, 98, 80, 61),
                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("images/bcard.png",width: width*0.28,),
                                Text("GCE A/L\n Past Papers"
                                  ,textAlign: TextAlign.center,
                                  style: GoogleFonts.raleway(
                                    textStyle: TextStyle(color: Colors.white,
                                        letterSpacing: .5,
                                        fontSize: width*0.058,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>pastPapersPage()),);
                            }
                        ),
                        InkWell(
                          child:Card(
                            color: Color.fromARGB(255, 98, 80, 61),
                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("images/ccard.png",width: width*0.3,),
                                Text("Model Papers",
                                  style: GoogleFonts.raleway(
                                    textStyle: TextStyle(color: Colors.white,
                                        letterSpacing: .5,
                                        fontSize: width*0.058,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ) ,
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>modelPapersPage()),);
                            }
                        ),
                        InkWell(
                          child: Card(
                            color: Color.fromARGB(255, 98, 80, 61),
                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("images/dcard.png",height: width*0.3,),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  child: Text("Teachers Guide",
                                    style: GoogleFonts.raleway(
                                      textStyle: TextStyle(color: Colors.white,
                                          letterSpacing: .5,
                                          fontSize: width*0.058,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>teachersGuidePage()),);
                            }
                        )



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
