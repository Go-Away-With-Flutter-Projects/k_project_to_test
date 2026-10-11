import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return const MaterialApp(home: OurApp());
  }
}

class OurApp extends StatelessWidget {
  const OurApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(bottom: 10),
                width: double.maxFinite,
                height: 40,
                decoration:
                BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text(
                  'Badr Essalam Ben Hamida',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),

              ///* The 2nd
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.only(bottom: 10),
                alignment: Alignment.center,
                width: double.maxFinite,
                height: 180,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.grey[300]),
                child: Text(
                  'To create a row or column in Flutter, you add a list of children widgets to a Row or Column widget. In turn, each child can itself be a row or column, and so on. The following example shows how it is possible to nest rows or columns inside of rows or columns.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),

              ///* The 3rd
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.only(bottom: 10),
                alignment: Alignment.center,
                width: 370,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.grey[300]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 113,
                      height: 30,
                      // margin: const EdgeInsets.only(right: 20),
                      child: GridView.builder(
                        // padding: const EdgeInsets.only(left: 20),
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: 1,
                            crossAxisSpacing: 0,
                            mainAxisSpacing: 4,
                            mainAxisExtent: 15),
                        itemCount: 5,
                        itemBuilder: (context, index) =>
                        const Icon(Icons.star, size: 20),
                      ),
                    ),
                    Text(
                      '170 reviews',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.only(bottom: 10),
                width: 370,
                height: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.grey[300]),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.notes),
                        Text('PREP'),
                        Text('\n25 min')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.timer_outlined),
                        Text('COOK'),
                        Text('\n1 hr')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.restaurant),
                        Text('FEEDS'),
                        Text('\n4-5')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
