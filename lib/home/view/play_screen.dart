import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/videoProvider.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  HomeProvider? T, F;

  Widget build(BuildContext context) {
    var m1 = ModalRoute.of(context)!.settings.arguments;
    T = Provider.of(context, listen: false);
    F = Provider.of(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Chewie(
            controller: T!.chewi!,
          ),
        ),
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    F!.pausesong();
  }
}
