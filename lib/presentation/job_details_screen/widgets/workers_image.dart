
import 'package:flutter/material.dart';

class WorkersImages extends StatelessWidget {
  const WorkersImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/user/image1.png',
            width: 120,
          ),
          Image.asset(
            'assets/user/image2.png',
            width: 120,
          ),
          Image.asset(
            'assets/user/image3.png',
            width: 120,
          ),
        ],
      ),
    );
  }
}
