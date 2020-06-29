import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
        home:MyApp(),

     )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(title:Text("Dialog")),
           body:Column(
             children: <Widget>[
               RaisedButton(
                 child:Text("press"),
                 onPressed: ()=>_showDialog(context),

               ),
             ],
           )
    );
  }
}
_showDialog(context){
  return showDialog(
      context:context,
      builder:(BuildContext context){
        return AlertDialog(
          title: Text('Confirm'),
          content:SingleChildScrollView(
            child:ListBody(
              children: <Widget>[Text("Are you sure?")],
            ),
          ),
          actions: <Widget>[
            RaisedButton(
              textColor:Colors.white ,
              color:Colors.lightBlue ,
              child:Text("No") ,
              onPressed:(){
                Navigator.of(context).pop();
              } ,
            ),
            RaisedButton(
              textColor:Colors.white ,
              child:Text("Ok") ,
              onPressed:(){
                Navigator.of(context).pop();
              } ,
            )
          ],
        );
  }
  );
}
