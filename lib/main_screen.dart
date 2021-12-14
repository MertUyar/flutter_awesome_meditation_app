import 'package:flutter/material.dart';
import 'package:flutter_awesome_meditation_app/constants.dart';
import 'package:flutter_awesome_meditation_app/widgets/gridview_discover_box.dart';
import 'package:flutter_awesome_meditation_app/widgets/recommended.dart';

import 'widgets/catagory_builder.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int isSelected = 0;

  List<String> catagoryListNames = [
    'Insomnia',
    'Depression',
    'Baby Sleep',
    'Insomnia',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 125,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 28, right: 18, top: 36),
              child: Row(
                children: const [
                  Text(
                    "Discover",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: mPrimaryColor,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search_outlined,
                    color: mPrimaryColor,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Container(
                  height: 60,
                  child: ListView.builder(
                    itemCount: catagoryListNames.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelected = index;
                          });
                        },
                        child: CatagoryBuilder(
                          isSelected: isSelected,
                          index: index,
                          text: catagoryListNames[index],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 28),
                child: SizedBox(
                  height: 30,
                  child: Row(
                    children: const [
                      Text(
                        'Recommended',
                        style: TextStyle(
                          color: Color(0xff515979),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'See All',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4A80F0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Container(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Recommended();
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.0),
                    child: Text(
                      'Recent',
                      style: TextStyle(color: Color(0xff515979)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Container(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      GridviewDiscoverBox(),
                      GridviewDiscoverBox(),
                      GridviewDiscoverBox(),
                      GridviewDiscoverBox(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ],
    );
  }
}
