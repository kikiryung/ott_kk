import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeHeader extends StatefulWidget {
  @override
  _HomeHeaderAppBarState createState() => _HomeHeaderAppBarState();
}

class _HomeHeaderAppBarState extends State<HomeHeader> {
  int _currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Image.asset(
        "assets/WAVVE_BI_logotype_white.png",
        width: 100,
        height: 100,
      ),
      // title: Text('WAVVE'),
      expandedHeight: MediaQuery.of(context).size.height / 2,
      floating: true,
      pinned: true,
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider(
              items: imgList
                  .map(
                    (item) => Container(
                      color: Colors.black,
                      child: Center(
                          heightFactor: MediaQuery.of(context).size.height,
                          widthFactor: MediaQuery.of(context).size.width,
                          child: Image.network(item, fit: BoxFit.cover)),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                autoPlay: true,
                aspectRatio: 16 / 9,
                // enlargeCenterPage: true,
                viewportFraction: 0.4,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                pauseAutoPlayOnTouch: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentSlide = index;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 4; i++)
                    Container(
                      width: 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: i == _currentSlide
                            ? Colors.blueAccent
                            : Colors.grey,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:ott_kk/components/body/video_list.dart';
//
// class HomeHeader extends StatelessWidget {
//   const HomeHeader({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SliverAppBar(
//       title: Image.asset(
//         "assets/WAVVE_BI_logotype_white.png",
//         width: 100,
//         height: 100,
//       ),
//       // title: Text('WAVVE'),
//       expandedHeight: 500.0,
//       floating: false,
//       pinned: true,
//       backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//       flexibleSpace: FlexibleSpaceBar(
//         background: Stack(
//           children: [
//             CarouselSlider(
//               options: CarouselOptions(
//                 height: MediaQuery.of(context).size.height,
//                 // height: 500,
//                 viewportFraction: 0.5,
//                 enlargeCenterPage: false,
//                 autoPlay: true,
//                 autoPlayInterval: Duration(seconds: 2),
//                 autoPlayAnimationDuration: Duration(milliseconds: 800),
//                 // autoPlayCurve: Curves.fastOutSlowIn,
//                 pauseAutoPlayOnTouch: true,
//                 // aspectRatio: 16 / 9,
//               ),
//               items: imgList
//                   .map((item) => Container(
//                         height: MediaQuery.of(context).size.height,
//                         color: Colors.black,
//                         child: Image.network(item, fit: BoxFit.cover),
//                       ))
//                   .toList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
final List<String> imgList = [
  'assets/a.jpg',
  'assets/b.jpg',
  'assets/c.jpg',
  'assets/d.jpg',
];
