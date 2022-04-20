import 'package:flutter/material.dart';

import 'package:seb7a/Home.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(app());
}
void initState(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
}
class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,

        home:Directionality(
          textDirection:TextDirection.rtl,
          child: HomeScreen(),
        ),

    );
  }
}