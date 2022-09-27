import 'package:evily1/models/product_model.dart';
import 'package:evily1/screens/bag_luggage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widget/bagDetails.dart';

class Product_screen extends StatefulWidget {
  const Product_screen({super.key});

  @override
  State<Product_screen> createState() => _Product_screenState();
}

class _Product_screenState extends State<Product_screen> {
  List<prodct_model> productList = [
    prodct_model(name: 'SKU', code: '0x4c86a', price: 'arrow'),
    prodct_model(name: 'PRICE', code: '', price: '₹ 1899/-'),
    prodct_model(name: 'Description', code: '', price: '')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => luggage_details(),
                )),
            child: Icon(color: Colors.black, Icons.arrow_back)),
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Row(
            children: [
              Text(
                'e',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w800,
                    fontSize: 29),
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
        actions: [Icon(color: Colors.black, Icons.person_outline)],
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: 360,
            child: Image.network(
              "https://m.media-amazon.com/images/I/81oUvlsYcnL._SL1500_.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (BuildContext context, int index) {
                return PrdctList(
                  products: productList[index],
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Icon(Icons.favorite_border),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color.fromARGB(255, 236, 192, 203),
              ),

              //  padding: EdgeInsets.only(left: 35),
              height: 40,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color.fromARGB(255, 236, 192, 203),
                    ),
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 9),
                      child: Text(
                        '   ADD TO CART   ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 9),
                      child: Text('   AVAILABLE AT SHOPS  ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}











//  Row(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(top: 12),
//                   height: 50,
//                   width: 360,
//                   color: Colors.white,
//                   child: Row(
//                     children: [
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text('SKU'),
//                         ],
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 120),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               '0x4c86a',
//                               style: TextStyle(color: Colors.red),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 120),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [Icon(Icons.arrow_back_outlined)],
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             Row(
//               children: [
//                 Column(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(top: 12),
//                       height: 50,
//                       width: 360,
//                       color: Colors.white,
//                       child: Row(
//                         children: [
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text('PRICE'),
//                             ],
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 260),
//                             child: Text(
//                               '@2890',
//                               style: TextStyle(
//                                   color: Color.fromARGB(255, 126, 83, 17)),
//                             ),
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//             Row(
//               children: [
//                 Column(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(top: 12),
//                       height: 50,
//                       width: 360,
//                       color: Colors.white,
//                       child: Text(
//                         'Description',
//                         style: TextStyle(color: Colors.black),
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             )
//           ],
//         ),
//         bottomNavigationBar: Row(
//           children: [
//             Row(
//               children: [
//                 Icon(Icons.favorite_border_outlined),
//               ],
//             ),
//             Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(left: 30),
//                   height: 34,
//                   child: Row(
//                     children: [
//                       Container(
//                         color: Colors.white,
//                         child: Row(
//                           children: [
//                             Text(
//                               'ADD TO CART',
//                               style: TextStyle(color: Colors.red),
//                             )
//                           ],
//                         ),
//                       ),
//                       Container(
//                         color: Colors.red,
//                         child: Row(
//                           children: [
//                             Text(
//                               'AVAILABLE AT SHOPS',
//                               style: TextStyle(color: Colors.white),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             )

