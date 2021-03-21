
import 'package:flutter/material.dart';
import 'package:pandefood/components/user_tile.dart';
import 'package:pandefood/provider/users.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final Users users = Provider.of(context);

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
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
  
}