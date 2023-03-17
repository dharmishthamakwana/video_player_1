import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'home/provider/videoProvider.dart';
import 'home/view/Videoscreen.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Videoprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Videoscreen(),
        },
      ),
    ),
  );
}