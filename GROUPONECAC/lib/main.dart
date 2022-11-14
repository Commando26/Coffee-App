import 'dart:core';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:coffee_and_code/view/openingPages/login.dart';
import 'package:coffee_and_code/view/openingPages/register.dart';
import 'package:coffee_and_code/view/homescreen.dart';
import 'package:coffee_and_code/other/config.dart';

Future<void> _messageHandler(RemoteMessage message) async {
  print('background message ${message.notification!.body}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_messageHandler);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp();
  @override
  App createState() => App();
}

class App extends State<MyApp> {
  late FirebaseMessaging messaging;

  @override
  void initState() {
    super.initState();
    // currentTheme.addListener(() {
    //   print('changes');
    //   setState(() {});
    // });
  }

  @override
  Widget build(BuildContext context) {
    messaging = FirebaseMessaging.instance;
    messaging.getToken().then((value) {
      print(value);
    });

    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: currentTheme.currentTheme(),
      initialRoute: 'login',
      routes: {
        'login': (context) => loginPage(),
        'register': (context) => registerPage(),
        'homescreen': (context) => homeScreen()
      },
    );
  }
}