import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';

class HomeProvider extends ChangeNotifier {
  VideoPlayerController? videoplayer;
  ChewieController? chewi;
  List Images = [
    "assets/chenal image/12.png",
    "assets/chenal image/13.jpg",
    "assets/chenal image/20.png",
    "assets/chenal image/16.jpeg",
    "assets/chenal image/18.jpg",
  ];
  List chanelImage = [
    "assets/chenal image/15.jpeg",
    "assets/chenal image/1.png",
    "assets/chenal image/21.jpg",
    "assets/chenal image/17.jpeg",
    "assets/chenal image/19.jpg",
  ];
  List channename = [
    "Coupon Couples",
    "Boomering",
    "Beauty of nature",
    "Funny carts",
    "Nexus Birds",
  ];

  // List videodetail = [
  //   "Company",
  //   "Jhoome Jo Pathaan",
  //   "Munny Badnam",
  //   "O Bedardeya",
  //   "Oo Oo Antava",
  // ];
  List videopath = [
    "assets/video/lo.mp4",
    "assets/video/2.mp4",
    "assets/video/15.mp4",
    "assets/video/13.mp4",
    "assets/video/14.mp4",
  ];

  void videoload(int index) {
    videoplayer = VideoPlayerController.asset("${videopath[index]}")
      ..initialize();
    chewi = ChewieController(
      videoPlayerController: videoplayer!,
      autoPlay: false,
      looping: false,
    );
  }

  void pausesong() {
    chewi!.pause();
  }
}
