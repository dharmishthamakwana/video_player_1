import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/videoProvider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;



  @override
  Widget build(BuildContext context) {
    homeProviderTrue = Provider.of(context, listen: true);
    homeProviderFalse = Provider.of(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Video Player"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                var m1 = homeProviderFalse!.videoload(index);
                Navigator.pushNamed(context, 'playscreen');
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 300,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.asset(
                            "${homeProviderFalse!.Images[index]}",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,

                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "${homeProviderFalse!.chanelImage[index]}",
                                fit: BoxFit.fill,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.yellow, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${homeProviderFalse!.channename[index]}"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white54,

                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    homeProviderFalse!.pausesong();
  }
}
