import 'package:flutter/material.dart';

class ProductItemTile extends StatelessWidget {
  const ProductItemTile(
      {super.key,
      required this.titlename,
      required this.color,
      required this.addproduct});
  final String titlename;
  final Color color;
  final VoidCallback addproduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Card(
        shadowColor: Colors.black,
        color: Color.fromARGB(255, 245, 239, 238),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 50,
              color: color,
            ),
            Text(
              titlename.toUpperCase(),
              style: TextStyle(
                  fontSize: 21.0,
                  color: Color.fromARGB(255, 171, 5, 177),
                  fontWeight: FontWeight.bold),
            ),
            TextButton(onPressed: addproduct, child: const Text("Addtocart"))
          ],
        ),
      ),
    );
  }
}
