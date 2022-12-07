import 'package:evily1/screens/bagDetails.dart';
import 'package:evily1/screens/homeScreen.dart';
import 'package:evily1/widget/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                      fontSize: 30.sp),
                ),
                Text(
                  'valy',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 29.sp),
                ),
              ],
            ),
          ),
          actions: [
            Icon(
              color: Colors.black,
              Icons.person_outline,
              size: 34.sp,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Product_screen(),
                        ),
                      );
                    },
                    child: Product(
                        img:
                            'https://m.media-amazon.com/images/I/81oUvlsYcnL._SL1500_.jpg',
                        name: 'Casual Men Bag',
                        price: '₹ 1290/-'),
                  ),
                  Product(
                      img:
                          'https://m.media-amazon.com/images/I/81lmkcoo76L._UL1400_.jpg',
                      name: 'Good Friend Water proof Bag',
                      price: '₹ 1299/-'),
                ],
              ),
              Row(
                children: [
                  Product(
                    img:
                        'https://4.imimg.com/data4/KG/KX/MY-7236014/mickey-mouse-school-bag-500x500.jpg',
                    name: 'Mickey Mouse School Bag',
                    price: '₹ 1690/-',
                  ),
                  Product(
                    img:
                        'https://n3.sdlcdn.com/imgs/j/a/f/Panda-Kids-School-Bag-Soft-SDL682518892-1-c75ca.jpg',
                    name: 'Panda Kid School Bag',
                    price: '₹ 899/-',
                  ),
                ],
              ),
              Row(
                children: [
                  Product(
                    img:
                        'https://contents.mediadecathlon.com/p754503/fbcee8b31f4e88a93c4271156a2fb9dc/p754503.jpg',
                    name: 'Hikung Bag',
                    price: '₹ 1799/-',
                  ),
                  Product(
                    img:
                        'https://m.media-amazon.com/images/I/71udr1D4LJL._UL1500_.jpg',
                    name: 'Mibasias Girls Unicorn Bag',
                    price: '₹ 1899/-',
                  ),
                ],
              ),
              Row(
                children: [
                  Product(
                    img:
                        'https://m.media-amazon.com/images/I/81oUvlsYcnL._SL1500_.jpg',
                    name: 'Casual Men Bag',
                    price: '₹ 1290/-',
                  ),
                  Product(
                      img:
                          'https://m.media-amazon.com/images/I/81lmkcoo76L._UL1400_.jpg',
                      name: 'Good Friend Water proof Bag',
                      price: '₹ 1299/-'),
                ],
              ),
            ],
          ),
        ));
  }
}
