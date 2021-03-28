import 'package:app/semesterBooks/sem1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:app/book.dart';
export './semesterBooks/sem1.dart';
class GroupListViewDemo extends StatefulWidget {
  @override
  _GroupListViewDemoState createState() => _GroupListViewDemoState();
}

class _GroupListViewDemoState extends State<GroupListViewDemo> {
  List _elements = [
    {'no':'1st Year','topicName': 'Sem 1', 'group': 'First Year'},
    {'no':'1st Year','topicName': 'Sem 2', 'group': 'First Year'},
    {'no':'2nd Year','topicName': 'Sem 3', 'group': 'Second Year'},
    {'no':'2nd Year','topicName': 'Sem 4', 'group': 'Second Year'},
    {'no':'3rd Year','topicName': 'Sem 5', 'group': 'Third Year'},
    {'no':'3rd Year','topicName': 'Sem 6', 'group': 'Third Year'},
    {'no':'4th Year','topicName': 'Sem 7', 'group': 'Fourth Year'},
    {'no':'4th Year','topicName': 'Sem 8', 'group': 'Fourth Year'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find your Books'),
      ),
      body:Stack(
          children:[Container(
              decoration: BoxDecoration(
                image:DecorationImage(
                    image: AssetImage("images/booksI.png"),
                    fit:BoxFit.cover,
                ),
              ),
              child:GroupedListView<dynamic, String>(  
              elements: _elements,
              groupBy: (element) => element['no'],
              groupComparator: (value1,
                  value2) => value1.compareTo(value2),
              itemComparator: (item1, item2) =>
                  item1['topicName'].compareTo(item2['topicName']),
              // order: GroupedListOrder.ASC,
              // useStickyGroupSeparators: true,
              groupSeparatorBuilder: (String value) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  value,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.bold),
                ),
              ),
              itemBuilder: (c, element) {
                return Card(
                elevation: 8.0,
                margin: new EdgeInsets.symmetric(horizontal: 10.0,
            vertical: 6.0),
                child: InkWell(
                  onTap: ()
                  {
                    if(element['topicName']=='Sem 1'){
                      print("hello");
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>sem1()));
                    }
                    if(element['topicName']=='Sem 2'){
                      print("hello");
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>book()));
                    }
                    if(element['topicName']=='Sem 3'){
                      print("hello");
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>book()));
                    }
                    if(element['topicName']=='Sem 4'){
                      print("hello");
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>book()));
                    }
                    if(element['topicName']=='Sem 5'){
                      print("hello");
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>book()));
                    }
                    if(element['topicName']=='Sem 6'){
                      print("hello");
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>book()));
                    }
                    if(element['topicName']=='Sem 7'){
                      print("hello");
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>book()));
                    }
                    if(element['topicName']=='Sem 8'){
                      print("hello");
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>book()));
                    }
                  },
                    child: Container(
                    child: ListTile(
            contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0,
                  vertical: 10.0),
            //leading: Icon(Icons.account_circle),
            title: Text(
              element['topicName'],
              style: TextStyle(fontSize: 16),
            ),
                    ),
                  ),
                ),
                  );
              },
                ),
              ),
              ],
      ),
    );
  }
}
