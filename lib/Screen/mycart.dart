import 'package:flutter/material.dart';
import 'package:mycart/appp_style.dart';
import 'package:mycart/model/productall.dart';
import 'package:provider/provider.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimarycolor,
        body: Container(
          padding: EdgeInsets.only(top: 52.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              Text(
                "This is Cart Items",
                style: kCartDividerTExt1,
              ),
              Expanded(child: Consumer<ProductAll>(
                builder: (context, cartData, child) {
                  return ListView.builder(
                      itemCount: cartData.cartItems.length,
                      itemBuilder: ((context, index) {
                        print("${cartData.cartItems.isNotEmpty}");
                        return cartData.cartItems.isNotEmpty
                            ? Container(
                                height: 55.0,
                                margin: const EdgeInsets.only(bottom: 6),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${cartData.cartItems[index].name}",
                                      style: TextStyle(
                                          fontSize: 21.0,
                                          color:
                                              Color.fromARGB(255, 45, 48, 65),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          cartData.deleteCartItem(
                                              cartData.cartItems[index]);
                                        },
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        ))
                                  ],
                                ))
                            : const Text(
                                "Go to cart",
                                style: TextStyle(color: Colors.black),
                              );
                      }));
                },
              )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  child: Text("Go To shopping")),
              const Divider(
                height: 10,
                color: Colors.black,
              ),
              Consumer<ProductAll>(builder: (context, cartData2, child) {
                return Column(
                  children: [
                    Text(
                      " Total item ${cartData2.cartItems.length}",
                      style: kCartDividerTExt,
                    ),
                    Text(
                      " Total price ${cartData2.totalprices},",
                      style: kCartDividerTExt,
                    ),
                  ],
                );
              }),
            ],
          ),
        ));
  }
}
