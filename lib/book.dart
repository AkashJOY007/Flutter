import 'package:app/widgets/pallete.dart';
import 'package:flutter/material.dart';
import './widgets/background.dart';
import './widgets/pallete2.dart';
import 'package:app/demo.dart';
class book extends StatefulWidget {
  @override
  _bookState createState() => _bookState();
}

class _bookState extends State<book> {
  @override
  Widget build(BuildContext context) {
    return Stack(
       children:[
       background(),
       Scaffold(
         backgroundColor: Colors.transparent,
         body: SafeArea(
                    child: Column(
             children:[
               Container(
                 height: 150,
                  child: Center(
                  child: Text('Find Your Books',style:kheading ,
                   ),
                 ),
               ),
               SizedBox(
                 height:100,
               ),
               Container(
                 child:Column(
                   children: [
                     Container(
                       width:150,
                       child:ListTile(
                         title:new Center(
                         child:Text('Semester1',style: kheading2),
                         )
                       ),
                       decoration:BoxDecoration(
                         color:Colors.grey[600].withOpacity(0.5),
                         borderRadius:BorderRadius.circular(16),
                       )

                     ),
                   SizedBox(
                     height: 50,
                   )
                   ]
                   ,
                 ),
               ),
                    InkWell(
                      
                      splashColor: Colors.amber,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>(GroupListViewDemo())));
                      },
                    child:Column(
                      
                      children:[Container(
                        width: 150,
                         child:ListTile(
                           title:new Center(
                           child:Text('Semester2',style: kheading2),
                           ),
                         ),
                         decoration:BoxDecoration(
                           color:Colors.grey[600].withOpacity(0.5),
                           borderRadius:BorderRadius.circular(16),
                         )

                       ),
                      ],
                    ),
                    
                    )
                   ],
                 ),
               ),
             
         ),
       ]
     );
  }
}