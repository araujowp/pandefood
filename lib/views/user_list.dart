
import 'package:flutter/material.dart';
import 'package:pandefood/components/user_tile.dart';
import 'package:pandefood/data/dummy_users.dart';

class UserList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final users = {...DUMMY_USERS};

    print( users.length);
    return Scaffold(
      appBar: AppBar(title: Text('Lista de usuarios'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: (){},
    )
    ]
    ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.entries.elementAt(i).value),
      ),
    );
  }
  
}