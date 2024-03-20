import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Image.asset(
        "assets/WAVVE_BI_logotype_white.png",
        width: 100,
        height: 100,
      ),
      // title: Text('WAVVE'),
      expandedHeight: 400.0,
      floating: false,
      pinned: true,
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 500.0,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                aspectRatio: 1,
              ),
              items: [
                'assets/1.jpg',
                'assets/2.jpg',
                'assets/3.jpg',
              ].map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      // width: MediaQuery.of(context).size.width,
                      // width: 500,
                      height: 500,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                      ),
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
