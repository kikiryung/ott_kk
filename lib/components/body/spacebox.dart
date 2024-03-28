import 'package:flutter/material.dart';

class SpaceBox extends StatelessWidget {
  const SpaceBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.black,
        height: 50,
      ),
    );
  }
}
