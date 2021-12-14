import 'package:flutter/material.dart';

class Recommended extends StatefulWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          height: 176,
          width: 305,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              Image.asset('assets/pics/backgroun2.png'),
            ],
          ),
        ),
      ),
    );
  }
}
