import 'package:evily1/models/catgory.dart';
import 'package:evily1/screens/bag_luggage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
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
        actions: [
          Icon(
            color: Colors.black,
            Icons.person_outline,
            size: 32,
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 9,
          ),
          Container(
            height: 54,
            //width: 100,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 232, 232),
                borderRadius: BorderRadius.circular(7)),
            // color: Color.fromARGB(255, 210, 208, 208),
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: 'What would your like to buy?',
                ),
                keyboardType: TextInputType.text,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Image.network(
              "https://www.appknox.com/hubfs/pqzEVsMg.jpeg",
              fit: BoxFit.fill,
              width: 380,
              height: 150,
              alignment: Alignment.bottomCenter,
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      children: [
                        CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 240, 233, 238),
                            radius: 30,
                            child: Icon(
                              Icons.home,
                              color: Colors.pink,
                              size: 27,
                            )),
                        Text(
                          'Popular',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 19),
                    child: Column(
                      children: [
                        CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 240, 233, 238),
                            radius: 30,
                            child: Icon(
                              Icons.timelapse_rounded,
                              color: Color.fromARGB(255, 144, 144, 38),
                              size: 29,
                            )),
                        Text(
                          'Flash Sell',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 29, right: 39),
                    child: Column(
                      children: [
                        CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 240, 233, 238),
                            radius: 30,
                            child: Icon(
                              Icons.fire_truck,
                              color: Color.fromARGB(255, 21, 149, 87),
                              size: 33,
                            )),
                        Text(
                          'Evaly Store',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 240, 233, 238),
                          radius: 30,
                          child: Icon(
                            Icons.card_giftcard,
                            color: Color.fromARGB(255, 14, 98, 85),
                            size: 27,
                          )),
                      Text(
                        'Voucher',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              TabBar(
                labelColor: Colors.black,
                tabs: [
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
              Row(
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => luggage_details(),
                            )),
                        child: Image.network(
                          'https://m.media-amazon.com/images/I/81oUvlsYcnL._SL1500_.jpg',
                          height: 120,
                          width: 90,
                        ),
                      ),
                      Text(
                        'Bags&Luggage',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Image.network(
                        'https://www.mustafasultan.com/uploads/cms/1570001320-818736.png',
                        height: 120,
                        width: 95,
                      ),
                      Text(
                        'Electonis&Accessories',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.network(
                        'https://www.thebodycare.co.in/wp-content/uploads/2018/12/Hand-Body-lotion-compressed1.jpg',
                        height: 120,
                        width: 175,
                      ),
                      Text(
                        'Beauty&Bodycare',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Image.network(
                        'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/11391306/2020/2/12/10b9eea6-35be-4b7d-8c39-826d4d3500c11581485549564-US-Polo-Assn-Men-Casual-Shoes-4671581485548936-1.jpg',
                        height: 120,
                        width: 95,
                      ),
                      Text(
                        'Shoes&Chappals',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.network(
                        'https://imageio.forbes.com/specials-images/imageserve/5f85be4ed0acaafe77436710/0x0.jpg?format=jpg&width=1200',
                        height: 120,
                        width: 95,
                      ),
                      Text(
                        'Books&Stationery',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Image.network(
                        'https://xcdn.next.co.uk/Common/Items/Default/Default/ItemImages/Search/224x336/770756.jpg',
                        height: 120,
                        width: 95,
                      ),
                      Text(
                        'Shirt&T-shirts',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      
      // bottomNavigationBar: Row(
      //   children: [
      //     Icon(
            
      //       Icons.home,
      //       color: Colors.pink,
      //       size: 27,
            
      //     ),
      //     Icon(
      //       Icons.favorite_outline,
      //       size: 27,
      //     ),
      //     Icon(
      //       Icons.card_travel,
      //       color: Color.fromARGB(255, 88, 86, 86),
      //     ),
      //     Icon(Icons.dashboard_outlined)
      //   ],
      // ),
    );
  }
}
