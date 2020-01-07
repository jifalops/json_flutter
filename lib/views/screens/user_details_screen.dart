import 'package:flutter/material.dart';
import 'package:json_example/models/_models.dart';

import '../../config.dart';

class UserDetailsScreen extends StatelessWidget {
  UserDetailsScreen(this.user);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: ListView(
        children: <Widget>[
          Text('id: ${user.id}'),
          Text('name: ${user.name}'),
          Text('username: ${user.username}'),
          Text('email: ${user.email}'),
          Text('address: ${user.address}'),
          Text('phone: ${user.phone}'),
          Text('website: ${user.website}'),
          Text('company: ${user.company}'),
          Wrap(
            children: <Widget>[
              RaisedButton(
                child: Text('Posts'),
                onPressed: () => Navigator.of(context)
                    .pushNamed(Routes.posts, arguments: user),
              ),
              RaisedButton(
                child: Text('Albums'),
                onPressed: () => Navigator.of(context)
                    .pushNamed(Routes.albums, arguments: user),
              ),
              RaisedButton(
                child: Text('To-Dos'),
                onPressed: () => Navigator.of(context)
                    .pushNamed(Routes.todos, arguments: user),
              ),
            ],
          )
        ],
      ),
    );
  }
}
