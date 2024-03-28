import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class VideoList4 extends StatelessWidget {
  final String title;

  const VideoList4(this.title);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return Stack(
            children: [
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    // enlargeCenterPage: true,
                    height: 500,
                    viewportFraction: 0.15,
                  ),
                  items: imgList
                      .map(
                        (item) => Container(
                          color: Colors.black,
                          child: Center(
                              heightFactor: height,
                              widthFactor: MediaQuery.of(context).size.width,
                              child: Image.network(item, fit: BoxFit.cover)),
                        ),
                      )
                      .toList(),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                color: Colors.black,
              ),
            ],
          );
        },
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

// final List<Widget> imageSliders = imgList
//     .map(
//       (item) => Container(
//         child: Container(
//           margin: EdgeInsets.all(0.0),
//           child: ClipRRect(
//               borderRadius: BorderRadius.all(Radius.circular(5.0)),
//               child: Stack(
//                 children: <Widget>[
//                   Image.network(item, fit: BoxFit.cover),
//                   Positioned(
//                     bottom: 0.0,
//                     left: 0.0,
//                     right: 0.0,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                           colors: [
//                             Color.fromARGB(200, 0, 0, 0),
//                             Color.fromARGB(0, 0, 0, 0)
//                           ],
//                           begin: Alignment.bottomCenter,
//                           end: Alignment.topCenter,
//                         ),
//                       ),
//                       padding:
//                           EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
//                       child: Text(
//                         '${imgList.indexOf(item)}.',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               )),
//         ),
//       ),
//     )
//     .toList();
