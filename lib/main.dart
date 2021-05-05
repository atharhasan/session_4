import 'package:flutter/material.dart';

import 'home_page.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Session 4',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
