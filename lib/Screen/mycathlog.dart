import 'package:flutter/material.dart';
import 'package:mycart/appp_style.dart';
import 'package:provider/provider.dart';

import '../model/productall.dart';
import '../widget/productitem_list.dart';

class MyCathlog extends StatelessWidget {
  const MyCathlog({super.key});


  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Cart",
            style: TextStyle(
                color: Colors.white,
                fontSize: 23.0,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Stack(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/cart");
                    },
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 36.0,
                    )),
                Positioned(
                  top: -5,
                  right: -5,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      maxRadius: 11,
                      child: Text(
                          "${Provider.of<ProductAll>(context).cartItemCount()}"),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        body: Container(
          child: ProductItemist(),
        ));
  }
}
