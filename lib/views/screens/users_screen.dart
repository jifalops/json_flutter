import 'package:flutter/material.dart';
import 'package:json_example/models/_models.dart';
import 'package:json_example/views/components/user_listitem.dart';
import 'package:provider/provider.dart';

import '../../controllers/controller.dart';

class UsersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a user'),
      ),
      body: FutureProvider.value(
        value: Controller.getUsers(),
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = Provider.of<List<User>>(context) ?? [];
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return UserListItem(users[index]);
      },
    );
  }
}
