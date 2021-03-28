import 'package:flutter/material.dart';
class MyTabbar extends StatelessWidget {
  const MyTabbar({
    Key key,
    @required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal:10,vertical:4),
      padding: const EdgeInsets.symmetric(horizontal:10,vertical:16),
      height:80,
      color: Colors.greenAccent[400],
       child: TabBar(
        controller:tabController,
        indicator:ShapeDecoration(color:Colors.orangeAccent,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(12))),
        tabs: [
          Tab(
            icon: Text('Semester 1',
            style:TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
            ),
            ),
          ),
          Tab(
            icon: Text('Semester 2',
            style:TextStyle(
              color:Colors.black,
              fontStyle:FontStyle.italic,
            ),
            ),
          ),
        ],
      ),
    );
  }
}