import 'package:evily1/screens/bag_details.dart';
import 'package:evily1/screens/homes_screen.dart';
import 'package:evily1/widget/bagDetails.dart';
import 'package:evily1/widget/bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/catgory.dart';
import '../models/product_model.dart';

class luggage_details extends StatefulWidget {
  luggage_details({
    super.key,
  });

  @override
  State<luggage_details> createState() => _luggage_detailsState();
}

class _luggage_detailsState extends State<luggage_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
             onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                )),
            child: Icon(color: Colors.black, Icons.arrow_back)
            ),
          title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Row(
            children: [
              Text(
                'e',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w800,
                    fontSize: 30),
              ),
              Text(
                'valy',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 29),
              ),
            ],
          ),
        ),
          actions: [Icon(color: Colors.black, Icons.person)],
        ),
        body: SingleChildScrollView(
          child: Row(
            children: [
              Container(
                width: 200,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Product_screen(),
                          )),
                      child: Image.network(
                          'https://m.media-amazon.com/images/I/81oUvlsYcnL._SL1500_.jpg'),
                    ),
                    Text('Casual Men Bag'),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        '₹ 1600/-',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 143, 90, 10)),
                      ),
                    ),
                    Image.network(
                        'https://m.media-amazon.com/images/I/81lmkcoo76L._UL1400_.jpg'),
                    Text('Good Friend Water proof Bag'),
                    Text(
                      '₹ 1600/-',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 143, 90, 10)),
                    ),
                    Image.network(
                        'https://4.imimg.com/data4/KG/KX/MY-7236014/mickey-mouse-school-bag-500x500.jpg'),
                    Text('Mickey Mouse School Bag'),
                    Text(
                      '₹ 1290/-',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 143, 90, 10)),
                    )
                  ],
                ),
              ),
              Container(
                width: 200,
                child: Column(
                  children: [
                    Image.network(
                        'https://m.media-amazon.com/images/I/61iR9NMcKpL._UL1280_.jpg'),
                    Text('Panda Kid School Bag'),
                    Text(
                      '₹ 1290/-',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 143, 90, 10)),
                    ),
                    Image.network(
                        'https://contents.mediadecathlon.com/p754503/fbcee8b31f4e88a93c4271156a2fb9dc/p754503.jpg'),
                    Text('Hikung Bag'),
                    Text(
                      '₹ 1399/-',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 143, 90, 10)),
                    ),
                    Image.network(
                        'https://m.media-amazon.com/images/I/71udr1D4LJL._UL1500_.jpg'),
                    Text('Mibasias Girls Unicorn Bag'),
                    Text(
                      '₹ 1899/-',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 143, 90, 10)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
