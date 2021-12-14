

import 'package:flutter/material.dart';

class GridviewDiscoverBox extends StatefulWidget {
  const GridviewDiscoverBox({Key? key}) : super(key: key);

  @override
  _GridviewDiscoverBoxState createState() => _GridviewDiscoverBoxState();
}

class _GridviewDiscoverBoxState extends State<GridviewDiscoverBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          SizedBox(
            height: 125,
            width: 150,
            child: Image.asset('assets/pics/backgroun2.png'),
          ),
        ],
      ),
    );
  }
}
