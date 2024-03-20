import 'package:flutter/material.dart';

import 'package:ott_kk/components/body/video_list.dart';
import 'package:ott_kk/components/header/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          HomeHeader(),
          VideoList(),
        ],
      ),
    );
  }
}
