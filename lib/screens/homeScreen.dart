import 'package:evily1/screens/bag&Luggage.dart';
import 'package:evily1/widget/bagDetails.dart';
import 'package:evily1/widget/bag_luggage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tb;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tb = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          color: Colors.black,
          Icons.horizontal_split_rounded,
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
                    fontSize: 29.sp),
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
        actions:  [
          Icon(
            color: Colors.black,
            Icons.person_outline,
            size: 32.sp,
          )
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 252, 247, 247),
        child: ListView(
          children: [
            SizedBox(
              height: 12.h,
            ),
            Container(
              height: 59.h,
             // width: 250,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 249, 241, 247),
                  borderRadius: BorderRadius.circular(7)),
              // color: Color.fromARGB(255, 210, 208, 208),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: 'What would your like to buy?',
                    border: InputBorder.none),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23),
              child: Image.network(
                "https://images.moneycontrol.com/static-mcnews/2019/09/Xiaomi_Diwali_Sale-770x433.jpg",
                fit: BoxFit.fill,
                width: 380.w,
                height: 150.h,
                alignment: Alignment.bottomCenter,
              ),
            ),
             SizedBox(
              height: 5.h,
            ),
            Container(
              color: Colors.white,
              child: Row(children: [
                Icns(
                    icn: Icons.home_outlined, name: 'Popular', clr: Colors.red),
                Icns(
                  icn: Icons.access_time_outlined,
                  name: 'Flash Sell',
                  clr: Color.fromARGB(255, 114, 105, 27),
                ),
                Icns(
                  icn: Icons.fire_truck,
                  name: 'Evaly Store',
                  clr: Color.fromARGB(255, 17, 86, 55),
                ),
                Icns(
                    icn: Icons.wallet_giftcard,
                    name: 'Voucher',
                    clr: Color.fromARGB(143, 20, 78, 68)),
              ]),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              color: Colors.white,
              child: TabBar(
                indicatorColor: Colors.blue,
                labelColor: Colors.black,
                tabs: const [
                  Tab(
                    text: 'Categories',
                  ),
                  Tab(
                    text: 'Brands',
                  ),
                  Tab(
                    text: 'Shops',
                  )
                ],
                controller: _tb,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => luggage_details(),
                            ));
                      },
                      child: BagLuggage(
                          img:
                              'https://m.media-amazon.com/images/I/81oUvlsYcnL._SL1500_.jpg',
                          name: 'Bags&Luggage'),
                    ),
                    BagLuggage(
                        img:
                            'https://www.mustafasultan.com/uploads/cms/1570001320-818736.png',
                        name: 'Electonis&Accessories'),
                    BagLuggage(
                        img:
                            'https://www.thebodycare.co.in/wp-content/uploads/2018/12/Hand-Body-lotion-compressed1.jpg',
                        name: 'Beauty&Bodycare'),
                  ],
                ),
                Row(
                  children: [
                    BagLuggage(
                        img:
                            'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/11391306/2020/2/12/10b9eea6-35be-4b7d-8c39-826d4d3500c11581485549564-US-Polo-Assn-Men-Casual-Shoes-4671581485548936-1.jpg',
                        name: 'Shoes&Chappals'),
                    BagLuggage(
                      img:
                          'https://imageio.forbes.com/specials-images/imageserve/5f85be4ed0acaafe77436710/0x0.jpg?format=jpg&width=1200',
                      name: 'Books&Stationery',
                    ),
                    BagLuggage(
                        img:
                            'https://xcdn.next.co.uk/Common/Items/Default/Default/ItemImages/Search/224x336/770756.jpg',
                        name: 'Shirt&T-shirts'),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.pink,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
                label: 'Wish List'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.card_travel,
                color: Color.fromARGB(255, 93, 92, 92),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
                color: Color.fromARGB(255, 93, 92, 92),
              ),
              label: 'Dashboard',
            ),
          ]),
    );
  }
}
