import 'package:flutter/material.dart';
import 'package:mycart/model/productall.dart';
import 'package:provider/provider.dart';

import 'productitemtile.dart';

class ProductItemist extends StatelessWidget {
  const ProductItemist({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductAll>(
      builder: (context, productsData, child) {
        return ListView.builder(
          itemCount: productsData.productItems.length,
          itemBuilder: (context, index) {
            return ProductItemTile(
              titlename: productsData.productItems[index].name,
              color: productsData.productItems[index].color,
              addproduct: () {
                productsData.addCartItems(productsData.productItems[index]);
              },
            );
          },
        );
      },
    );
  }
}
