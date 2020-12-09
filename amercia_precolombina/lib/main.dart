import 'package:flutter/material.dart';

//Propias
import 'package:amercia_precolombina/src/pages/work_in_progress_page.dart';
import 'package:amercia_precolombina/src/routes/routes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'América Precolombina',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getAppRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) => WorkInProgress());
      },
    );
  }
}
