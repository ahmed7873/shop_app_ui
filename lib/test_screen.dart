import 'package:flutter/material.dart';
import 'package:task_1/models/product_model.dart';
import 'package:task_1/widets/method_widgets/custom_app_bar.dart';
import 'package:task_1/widets/product_card.dart';
import 'package:task_1/widets/warning_widget.dart';

// ignore: must_be_immutable
class TestScreen extends StatelessWidget {
  TestScreen({super.key});
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
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 260,
                color: Colors.red[400],
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Header",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "bodey kjas asigisagi sa",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                // child: ,
              ),
              Positioned(
                right: -20,
                top: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "images/8.jpg",
                    width: 200,
                    // fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          DefaultTabController(
            length: 4,
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 230),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                    const WarningWidget(
                      title: "Warning",
                      desc: "some thing error",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                          padding: const EdgeInsets.all(0),
                          itemCount: products.length,
                          itemBuilder: (context, index) =>
                              ProductCard(productModel: products[index])),
                    )
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
