import 'package:flutter/material.dart';
import 'MyMainMenuPage.dart';

import 'package:gdg_roma_flutter_app/events/events_route.dart';


void main() {
  runApp(MaterialApp(
    title: 'GDG & WTM Roma',
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/events': (context) => EventsRoute(),
    },
  ));
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MyMainMenuPage();
  }
}


