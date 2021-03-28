import 'package:app/widgets/background.dart';
import 'package:flutter/material.dart';
import 'sem1a.dart';
import 'package:flutter/cupertino.dart';

class sem1 extends StatefulWidget {
  @override
  _sem1State createState() => _sem1State();
}

class _sem1State extends State<sem1> with TickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.greenAccent[400],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Text(
          "Books for 1st Year",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu_book_rounded),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      backgroundColor: Colors.greenAccent[400],
      body: Column(
        children: [
          MyTabbar(tabController: tabController),
          Flexible(
            flex: 2,
                      child: Container(
              height: 2000,
              decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: AssetImage("images/book1.jpg"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: TabBarView(controller: tabController, children: [
                Center(
                    child: Column(
                  children: [
                    Container(
                      padding:EdgeInsets.only(top:15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white60.withOpacity(0.9)),
                      height: 80,
                      width: 5000,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        splashColor: Colors.blue[10],
                        hoverColor: Colors.blue[600],
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Physics',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.only(top:15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white60.withOpacity(0.9)),
                      height: 80,
                      width: 5000,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        splashColor: Colors.blue[10],
                        hoverColor: Colors.blue[600],
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Physics',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.only(top:15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white60.withOpacity(0.9)),
                      height: 80,
                      width: 5000,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        splashColor: Colors.blue[10],
                        hoverColor: Colors.blue[600],
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Physics',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.only(top:15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white60.withOpacity(0.9)),
                      height: 80,
                      width: 5000,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        splashColor: Colors.blue[10],
                        hoverColor: Colors.blue[600],
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Physics',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.only(top:15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white60.withOpacity(0.9)),
                      height: 80,
                      width: 5000,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        splashColor: Colors.blue[10],
                        hoverColor: Colors.blue[600],
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Physics',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.only(top:15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white60.withOpacity(0.9)),
                      height: 80,
                      width: 5000,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        splashColor: Colors.blue[10],
                        hoverColor: Colors.blue[600],
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Physics',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.only(top:15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white60.withOpacity(0.9)),
                      height: 80,
                      width: 5000,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        splashColor: Colors.blue[10],
                        hoverColor: Colors.blue[600],
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Physics',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.only(top:15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white60.withOpacity(0.9)),
                      height: 80,
                      width: 5000,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        splashColor: Colors.blue[10],
                        hoverColor: Colors.blue[600],
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Physics',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
                Center(
                    child: Column(
                  children: [],
                )),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
