import 'package:flutter/material.dart';
import 'package:json_example/models/_models.dart';

import '../../config.dart';

class UserListItem extends StatelessWidget {
  const UserListItem(this.user);
  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        user.id.toString(),
        style: Theme.of(context).textTheme.display1,
      ),
      title: Text(user.name),
      subtitle: Text(user.username),
      onTap: () =>
          Navigator.of(context).pushNamed(Routes.user, arguments: user),
    );
  }
}
