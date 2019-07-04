import 'package:flutter/material.dart';


void main(){
 runApp(MaterialApp(
   
      title: "Long List View 2",
      
      home: Scaffold(
        appBar: AppBar(title: Text("List View 2"),),
         body: getListView(),
         floatingActionButton: FloatingActionButton(
           onPressed: null,
           child: Icon(Icons.add),
           tooltip:'Add One',
         ),

      ) ,
  ));
}


List<String> getListElements() {

var items = List<String>.generate(1000, (counter)=>"Item $counter");
return items;
}

Widget getListView(){
  var listItems = getListElements();
  var listView = ListView.builder(
    itemBuilder: (context, index){
      return ListTile(
        leading: Icon(Icons.add),
        title: Text(listItems[index]),
        trailing: Icon(Icons.wifi),
          onTap:(){
            //debugPrint('${listItems[index]} was tapped');
          showSnackBar(context, listItems[index]);
          }
      );
    },
  );
  return listView;
}

void showSnackBar(BuildContext context, String items) {
   
  var snackBar = SnackBar(

    action: SnackBarAction(label: "UNDO",
    
    onPressed: (){
      debugPrint("Action Performing !!!");
    },
    ),
    
  );
  Scaffold.of(context).showSnackBar(snackBar);
}