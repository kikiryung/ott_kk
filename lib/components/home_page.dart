import 'package:flutter/material.dart';
import 'package:ott_kk/components/body/spacebox.dart';

import 'package:ott_kk/components/body/video_list2.dart';

import 'package:ott_kk/components/body/video_list.dart';
import 'package:ott_kk/components/body/video_list3.dart';
import 'package:ott_kk/components/body/video_list4.dart';
import 'package:ott_kk/components/header/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          HomeHeader(),
          // VideoList(),
          // VideoList2(),
          SpaceBox(),
          VideoList4("끼끼님이 시청중인"),
          SpaceBox(),
          VideoList4("믿고 보는 웨이브 에디터 추천작"),
          SpaceBox(),
          // VideoList3(),
          // VideoList4(),
        ],
      ),
    );
  }
}
