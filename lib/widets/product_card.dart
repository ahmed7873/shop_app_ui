import 'package:flutter/material.dart';
import 'package:task_1/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productModel;
  const ProductCard({
    required this.productModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 2),
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5,
            )
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(productModel.image))),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    title: Text(productModel.name),
                    subtitle: Text(productModel.dec),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          productModel.fav
                              ? Icons.favorite
                              : Icons.favorite_outline,
                          color: productModel.fav ? Colors.orange : Colors.grey,
                        )),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Row(
                      // mainAxisAlignment:
                      // MainAxisAlignment.spaceAround,
                      children: [
                        Wrap(
                          children: [
                            Icon(
                              Icons.star,
                              color: productModel.numFav >= 1
                                  ? Colors.orange
                                  : Colors.grey,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: productModel.numFav >= 2
                                  ? Colors.orange
                                  : Colors.grey,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: productModel.numFav >= 3
                                  ? Colors.orange
                                  : Colors.grey,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: productModel.numFav >= 4
                                  ? Colors.orange
                                  : Colors.grey,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: productModel.numFav >= 5
                                  ? Colors.orange
                                  : Colors.grey,
                              size: 15,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Wrap(
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.send,
                              color: Colors.grey,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
