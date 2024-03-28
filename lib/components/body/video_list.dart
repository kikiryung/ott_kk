import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class VideoList extends StatelessWidget {
  const VideoList({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center, // 수직 방향 정렬
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '끼끼님이 시청중인',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white, // 원하는 색상으로 변경
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: height,
                autoPlay: false,
                aspectRatio: 16 / 9,
                // enlargeCenterPage: true,
                viewportFraction: 0.3,
              ),
              items: imgList
                  .map((item) => Container(
                        color: Colors.yellow,
                        child: Center(
                            heightFactor: 500,
                            widthFactor: MediaQuery.of(context).size.width,
                            child: Image.network(item, fit: BoxFit.cover)),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'assets/1.jpg',
  'assets/2.jpg',
  'assets/3.jpg',
  'assets/4.jpg',
  'assets/5.jpg',
  'assets/6.jpg',
  'assets/7.jpg',
];
//
// final List<Widget> imageSliders = imgList
//     .map(
//       (item) => Container(
//         child: Container(
//           margin: EdgeInsets.all(1.0),
//           child: ClipRRect(
//               borderRadius: BorderRadius.all(Radius.circular(5.0)),
//               child: Stack(
//                 children: <Widget>[
//                   Image.network(item, fit: BoxFit.cover),
//                   Positioned(
//                       bottom: 0.0,
//                       left: 0.0,
//                       right: 0.0,
//                       child: Stack(
//                         children: [
//                           Container(
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 colors: [
//                                   Color.fromARGB(200, 0, 0, 0),
//                                   Color.fromARGB(0, 0, 0, 0)
//                                 ],
//                                 begin: Alignment.bottomCenter,
//                                 end: Alignment.topCenter,
//                               ),
//                             ),
//                             padding: EdgeInsets.symmetric(
//                                 vertical: 2.0, horizontal: 2.0),
//                             child: Text(
//                               '${imgList.indexOf(item)}.',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20.0,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       )),
//                 ],
//               )),
//         ),
//       ),
//     )
//     .toList();
