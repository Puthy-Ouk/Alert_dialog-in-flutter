
import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
  TextEditingController todoCOntroller = TextEditingController();
  createAlert(BuildContext context){
    return showDialog(
      context: context,
      builder: (context){
      return AlertDialog(
        title: Text("Alert"),
        content: TextField(
          controller: todoCOntroller,
          decoration: InputDecoration(
            hintText: 'Add something',
          ),
        ),
        
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
        ),
    
        actions: <Widget>[ 
         MaterialButton(
            onPressed: (){
              Navigator.of(context).pop(todoCOntroller.text.toString());
              debugPrint(todoCOntroller.text.toString());
            },
            child: Text("Add new",style: TextStyle(color: Colors.blue),),
          ),

        ],
      );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Modal Dialog"),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        createAlert(context);
      },
     child: Icon(Icons.add),
    ),
    
    );
  }
}