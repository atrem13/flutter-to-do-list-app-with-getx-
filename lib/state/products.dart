import 'package:get/get.dart';
import 'dart:math';
import '../models/item.dart';

class Product extends GetxController {
  RxList<Item> _items = List.generate(
      100,
      (index) => Item(
          id: index,
          name: 'Product $index',
          price: Random().nextDouble() * 100,
          inWishList: false.obs)).obs;
}
