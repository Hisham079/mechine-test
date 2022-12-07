import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Product extends StatelessWidget {
  Product(
      {super.key, required this.img, required this.name, required this.price});
  String img;
  String name;
  String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(blurRadius: 12, color: Color.fromARGB(26, 125, 123, 123))
          ],
          color: Colors.white,
        ),
        height: 270.h,
        width: 160.w,
        child: Column(
          children: [
            Image.network(
              img,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(name,
              style: TextStyle(),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                price,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 143, 90, 10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
