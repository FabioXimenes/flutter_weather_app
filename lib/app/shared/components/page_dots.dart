import 'package:flutter/material.dart';

class PageDots extends StatelessWidget {
  final int current_index;

  const PageDots({Key key, this.current_index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: current_index == 0 ? Colors.grey[800] : Colors.grey,
          ),
        ),
        SizedBox(width: 5),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: current_index == 1 ? Colors.grey[800] : Colors.grey,
          ),
        ),
        // SizedBox(width: 5),
        // AnimatedContainer(
        //   duration: Duration(milliseconds: 300),
        //   height: 7,
        //   width: 7,
        //   decoration: BoxDecoration(
        //     shape: BoxShape.circle,
        //     color: current_index == 2 ? Colors.grey[800] : Colors.grey,
        //   ),
        // )
      ],
    );
  }
}
