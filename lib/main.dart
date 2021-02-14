import 'package:flutter/material.dart';
import 'package:the_emoji_game/views/auth/login_view.dart';
import 'package:the_emoji_game/views/auth/sign_up_view.dart';
import 'package:the_emoji_game/views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Emoji Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginView(),
    );
  }
}
