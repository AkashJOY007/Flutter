import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:app/GPA.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;

    // style
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/top_header.png')),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 62,
                          // backgroundImage: NetworkImage(
                          //     'https://i.pinimg.com/originals/78/07/03/78070395106fcd1c3e66e3b3810568bb.jpg'),
                        ),
                        SizedBox(
                          width: 66,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'John Richardo',
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              '4101410141',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.redAccent,
                                  fontFamily: "Montserrat Regular"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      padding: EdgeInsets.all(20),
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      primary: false,
                      crossAxisCount: 2,
                      children: <Widget>[
                        //this is personal data
                        InkWell(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>GPA()));
                          },
                          borderRadius: BorderRadius.circular(78),
                        child:Card(

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(78)),
                          elevation: 54,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/personal.png',
                                height: 100,
                              ),
                              Text(
                                'Personal Data',
                                style: cardTextStyle,
                              )
                            ],
                          ),
                        ),
                        ),
                        InkWell(
                          hoverColor: Colors.black,
                          borderRadius: BorderRadius.circular(82),
                          splashColor: Colors.greenAccent,
                        child:Card(
                          //card 2:Books
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(82)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/books.png', //add img here
                                height: 100,
                              ),
                              //SizedBox(height: 10),
                              Text(
                                'Books',
                                style: cardTextStyle,
                              )
                            ],
                          ),
                        ),
                          onTap: (){
                            print("Tap");
                          },
                          ),
                        InkWell(
                        child:Card(
                          //card 3:gpa
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 10,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/calc.png',
                                height: 100,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'GPA Calculator',
                                style: cardTextStyle,
                              )
                            ],
                          ),
                        ),
                        onTap:()
                        {
                          print("tap");
                        } ,
                        ),
                        // InkWell(
                        //   borderRadius: BorderRadius.circular(16),
                        //   splashColor: Colors.greenAccent[210],
                        //   child: Card(
                        //     // color: Colors.transparent,
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(20)),
                        //     elevation: 20,
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: <Widget>[
                        //         SvgPicture.network(
                        //           'https://image.flaticon.com/icons/svg/1904/1904235.svg',
                        //           height: 128,
                        //         ),
                        //         Text(
                        //           'Course Booking',
                        //           style: cardTextStyle,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        //   onTap: () {
                        //     print("Tapped");
                        //   },
                        // ),
                        InkWell(
                          child:
                        Card(
                          //card 4:course notes
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/notes.png',
                                height: 100,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Course Notes',
                                style: cardTextStyle,
                              )
                            ],
                          ),
                        ),
                        onTap: (){
                          print("you tapped");
                        },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
