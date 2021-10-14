import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../state/products.dart';

class WishListScreen extends StatelessWidget {
  // const WishListScreen({Key? key}) : super(key: key);
  final Products _p = Get.find<Products>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: _p.wishListItems.length,
          itemBuilder: (context, index) {
            final item = _p.wishListItems[index];
            return Card(
              key: ValueKey(item.id),
              margin: EdgeInsets.all(5),
              color: Colors.blue[200],
              child: ListTile(
                title: Text(item.name),
                subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
                trailing: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    item.inWishList.value = false;
                    _p.removeItem(item.id);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
