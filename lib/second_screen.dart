import 'package:flutter/material.dart';
import 'package:task_1/models/product_model.dart';
import 'package:task_1/widets/method_widgets/custom_app_bar.dart';
import 'package:task_1/widets/second_screen/body_header.dart';
import 'package:task_1/widets/second_screen/product_card2.dart';

class SecondSecreen extends StatefulWidget {
  SecondSecreen({super.key});

  @override
  State<SecondSecreen> createState() => _SecondSecreenState();
}

class _SecondSecreenState extends State<SecondSecreen> {
  int selectedTab = 0;
  final List<ProductModel> products = [
    ProductModel(
        image: "images/1.jpeg",
        name: "Pro 1",
        dec: "desc for Pro 1",
        fav: true,
        numFav: 3),
    ProductModel(
        image: "images/2.jpg",
        name: "Pro 1",
        dec: "desc for Pro 1",
        fav: false,
        numFav: 0),
    ProductModel(
        image: "images/3.jpeg",
        name: "Pro 1",
        dec: "desc for Pro 1",
        fav: true,
        numFav: 4),
    ProductModel(
        image: "images/4.jpeg",
        name: "Pro 1",
        dec: "desc for Pro 1",
        fav: true,
        numFav: 2),
    ProductModel(
        image: "images/5.jpeg",
        name: "Pro 1",
        dec: "desc for Pro 1",
        fav: false,
        numFav: 0),
    ProductModel(
        image: "images/6.jpeg",
        name: "Pro 1",
        dec: "desc for Pro 1",
        fav: true,
        numFav: 4),
    ProductModel(
        image: "images/7.jpeg",
        name: "Pro 1",
        dec: "desc for Pro 1",
        fav: true,
        numFav: 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomSheet: DefaultTabController(
        length: 3,
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 550,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderBodyScondScreen(),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                      TextSpan(
                          text: "daly trive: ",
                          style: TextStyle(color: Colors.grey)),
                      TextSpan(
                          text: "0.30 arm to noo pin",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold))
                    ])),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20, left: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Text(
                      " 4.9",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " 200+ Rekjah",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20, left: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: Colors.orange,
                    ),
                    Text(
                      " Locations",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orange[200],
                    borderRadius: BorderRadius.circular(50)),
                padding: const EdgeInsets.all(10),
                child: TabBar(
                    dividerColor: Colors.transparent,
                    labelStyle: TextStyle(color: Colors.orange[700]),
                    unselectedLabelColor: Colors.grey,
                    indicatorPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    indicatorColor: Colors.orange[700],
                    tabs: const [
                      Tab(child: Text("Mobiles")),
                      Tab(child: Text("Other 1")),
                      Tab(child: Text("Other 2")),
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) =>
                          ProductCard2(productModel: products[index])),
                  const Text("data"),
                  const Text("data"),
                ],
              ))
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/4.jpeg"))),
      ),
    );
  }
}
