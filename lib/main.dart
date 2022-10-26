import 'package:flutter/material.dart';
import 'package:tatware/view/chat_screen.dart';
import 'package:tatware/view/start_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
  return    MaterialApp(
        title: 'Tatware',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(          
          primarySwatch: Colors.blue,
        ),
        home: StartScreen(),
      
    );
    }
    );
  }
}


