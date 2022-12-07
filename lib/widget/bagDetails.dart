import 'package:evily1/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrdctList extends StatefulWidget {
  PrdctList({super.key, required this.products});
  prodct_model products;

  @override
  State<PrdctList> createState() => _PrdctListState();
}

class _PrdctListState extends State<PrdctList> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Color.fromARGB(255, 252, 250, 250),
      leading: Text(
        widget.products.name,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        textAlign: TextAlign.justify,
      ),
      title: Center(
        child: Text(
          widget.products.code,
          style: TextStyle(
              fontSize: 18.sp,
              color: Color.fromARGB(255, 250, 18, 2),
              fontWeight: FontWeight.bold),
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}

class Icns extends StatelessWidget {
  Icns({super.key, required this.icn, required this.name,required this.clr});
  IconData icn;
  String name;
  Color clr;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(children: [
        CircleAvatar(
            backgroundColor: Color.fromARGB(255, 240, 233, 238),
            radius: 30,
            child: Icon(
              icn,
              color: clr,
              size: 27,
            )),
        Text(
          name,
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.grey,
          ),
        )
      ]),
    );
  }
}
