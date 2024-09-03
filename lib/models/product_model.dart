class ProductModel {
  late String image, name, dec;
  late bool fav;
  late double numFav;
  double price = 0, oldPrice = 0;

  ProductModel(
      {required this.image,
      required this.name,
      required this.dec,
      required this.fav,
      required this.numFav,
      this.price = 0,
      this.oldPrice = 0});
}
