import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xff555555),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Project List"),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: (Text("Here we will show Project List"))
                )
              ],
            ),
          ),
        ));
  }
  List<String>getListElements(){
    var items=List<String>.generate(100, (counter) => "Items $counter");
    return items;
  }
  Widget getListView(){
    var listItems = getListElements();
    var listview = ListView.builder(itemBuilder: (context,index){
      return ListTile(
        title: Text(listItems[index]),
      );
    });
    return listview;
  }

}


