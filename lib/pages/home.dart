import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromARGB(255, 51, 50, 50),
            ),
          ),
        ),
        height: 60,
        width: double.infinity,
        child: CubertoBottomBar(
          tabColor: Colors.blue,
          selectedTab: _currentIndex,
          tabs: [
            TabData(iconData: Icons.home, title: 'Home'),
            TabData(iconData: Icons.merge_outlined, title: 'Services'),
            TabData(iconData: Icons.bookmark_border, title: 'Activity'),
            TabData(iconData: Icons.person, title: 'Account'),
          ],
          onTabChangedListener: (position, title, tabColor) {
            setState(() {
              _currentIndex = position;
            });
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "uber",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 227, 225, 225),
                    borderRadius: BorderRadius.circular(25)),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.search_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Where to?",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Suggestions?",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "see all",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 90,
                    width: 80,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 222, 220, 220),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.abc,
                          size: 40,
                        ),
                        Text(
                          "trip",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 80,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 222, 220, 220),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.abc,
                          size: 40,
                        ),
                        Text(
                          "trip",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 80,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 222, 220, 220),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.abc,
                          size: 40,
                        ),
                        Text(
                          "trip",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 80,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 222, 220, 220),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.abc,
                          size: 40,
                        ),
                        Text(
                          "trip",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Commute smarter",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 260,
                      height: 200,
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: const Image(
                                image: AssetImage('assets/images/img1.jpg'),
                                fit: BoxFit.cover,
                              )),
                          const SizedBox(
                            height: 3,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text("Hop on a shuttle",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w800),),
                                  SizedBox(height: 7,),
                                  Text("Pre-book a seat,ride in comfort",style: TextStyle(fontSize: 15,color: Colors.black54),)
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 25,),
                    Container(
                      width: 260,
                      height: 200,
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            width: 200,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: const Image(
                                  image: AssetImage('assets/images/img2.jpg'),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text("try group trips",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w800),),
                                  SizedBox(height: 7,),
                                  Text("Take a trip with coworker' and save",style: TextStyle(fontSize: 15,color: Colors.black54),)
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
          
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Save every day",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 260,
                      height: 200,
                      child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: const Image(
                                image: AssetImage('assets/images/img1.jpg'),
                                fit: BoxFit.cover,
                              )),
                          const SizedBox(
                            height: 3,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text("Hop on a shuttle",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w800),),
                                  SizedBox(height: 7,),
                                  Text("Pre-book a seat,ride in comfort",style: TextStyle(fontSize: 15,color: Colors.black54),)
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 25,),
                    Container(
                      width: 260,
                      height: 200,
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            width: 200,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: const Image(
                                  image: AssetImage('assets/images/img2.jpg'),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Text("try group trips",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w800),),
                                  SizedBox(height: 7,),
                                  Text("Take a trip with coworker' and save",style: TextStyle(fontSize: 15,color: Colors.black54),)
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
          
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
