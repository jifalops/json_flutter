import 'package:flutter/material.dart';
import 'package:json_example/views/screens/users_screen.dart';

import 'config.dart';
import 'views/screens/user_details_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: UsersScreen(),
      routes: {
        Routes.user: (context) => UserDetailsScreen(ModalRoute.of(context).settings.arguments),
      },
    );
  }
}
