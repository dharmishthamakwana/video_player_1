import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home/provider/videoProvider.dart';
import 'home/view/Videoscreen.dart';
import 'home/view/play_screen.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: ,
        routes: {
          '/':(context) => HomeScreen(),
          'playscreen':(context) => PlayScreen(),
        },
      ),
    ),
  );
}