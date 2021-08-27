import 'package:design_pages/src/pages/basico_page.dart';
import 'package:design_pages/src/pages/botones_page.dart';
import 'package:design_pages/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';//ios
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //ios
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle.light.copyWith(
    //     statusBarColor: Colors.red
    //   )
    // );

    // SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
    //   statusBarColor: Colors.transparent
    // ));

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'basico',
      routes: {
        'basico'    : (BuildContext context) => BasicoPage(),
        'scroll'    : (BuildContext context) => ScrollPage(),
        'botones'    : (BuildContext context) => BotonesPage(),
      }
    );
  }
}