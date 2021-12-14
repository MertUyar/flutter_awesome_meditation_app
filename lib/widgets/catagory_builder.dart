import 'package:flutter/material.dart';


class CatagoryBuilder extends StatefulWidget {
  final String text;
  final int index;
  final int isSelected;
  const CatagoryBuilder({Key? key, required this.text, required this.index, required this.isSelected}) : super(key: key);

  @override
  _CatagoryBuilderState createState() => _CatagoryBuilderState();
}

class _CatagoryBuilderState extends State<CatagoryBuilder> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: widget.isSelected == widget.index ? Color(0xff4A80F0): Color(0xff1C2031),
              borderRadius: BorderRadius.circular(12)
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              child: Text(
                widget.text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
