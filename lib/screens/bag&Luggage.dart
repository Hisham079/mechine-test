import 'package:evily1/screens/bagDetails.dart';
import 'package:evily1/screens/homeScreen.dart';
import 'package:flutter/material.dart';

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
          actions: [
            Icon(
              color: Colors.black,
              Icons.person_outline,
              size: 34,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color.fromRGBO(240, 233, 238, 1),
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Container(
                  width: 195,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Product_screen(),
                            )),
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Image.network(
                                  'https://m.media-amazon.com/images/I/81oUvlsYcnL._SL1500_.jpg'),
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
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
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
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
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
                    ],
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  color: Color.fromRGBO(240, 233, 238, 1),
                  width: 192,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        height: 300,
                        child: Column(
                          children: [
                            Image.network(
                                'https://n3.sdlcdn.com/imgs/j/a/f/Panda-Kids-School-Bag-Soft-SDL682518892-1-c75ca.jpg'),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Panda Kid School Bag'),
                            Text(
                              '₹ 1290/-',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 143, 90, 10)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
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
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Image.network(
                                'https://m.media-amazon.com/images/I/71udr1D4LJL._UL1500_.jpg'),
                            Text('Mibasias Girls Unicorn Bag'),
                            const Text(
                              '₹ 1899/-',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 173, 110, 16)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
