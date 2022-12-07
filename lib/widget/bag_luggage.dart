import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BagLuggage extends StatelessWidget {
   BagLuggage({super.key,required this.img,required this.name});
  String img;
  String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        height: 150.h,
        width: 107.w,
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              img,
              height: 120.h,
              width: 90.w,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
