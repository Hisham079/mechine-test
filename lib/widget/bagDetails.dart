import 'package:evily1/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
              fontSize: 18, color: Color.fromARGB(255, 250, 18, 2), fontWeight: FontWeight.bold),
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
