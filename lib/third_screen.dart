import 'package:flutter/material.dart';
import 'package:task_1/models/product_model.dart';
import 'package:task_1/widets/method_widgets/custom_app_bar.dart';
import 'package:task_1/widets/second_screen/body_header.dart';
import 'package:task_1/widets/second_screen/product_card2.dart';

// ignore: must_be_immutable
class ThirdScreen extends StatelessWidget {
  ThirdScreen({super.key});
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
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 260,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("images/5.jpeg"))),
          ),
          DefaultTabController(
            length: 4,
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 230),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeaderBodyScondScreen(),
                    const SizedBox(
                      height: 5,
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
                      height: 5,
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
                      height: 5,
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
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
                      // height: 100,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        children: [
                          Text(
                            "30% OFF",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "enjoy 30% off on of categories",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.orange[200],
                          borderRadius: BorderRadius.circular(50)),
                      padding: const EdgeInsets.all(10),
                      child: TabBar(
                          dividerColor: Colors.transparent,
                          labelStyle: TextStyle(color: Colors.orange[700]),
                          unselectedLabelColor: Colors.grey,
                          indicatorPadding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 38),
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorColor: Colors.orange[700],
                          tabs: const [
                            Tab(child: Text("Mobiles")),
                            Tab(child: Text("Other 1")),
                            Tab(child: Text("Other 2")),
                            Tab(child: Text("Other 3")),
                          ]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: TabBarView(
                      children: [
                        ListView.builder(
                            padding: const EdgeInsets.all(0),
                            itemCount: products.length,
                            itemBuilder: (context, index) =>
                                ProductCard2(productModel: products[index])),
                        const Text("data"),
                        const Text("data"),
                        const Text("data"),
                      ],
                    ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
