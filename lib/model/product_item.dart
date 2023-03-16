import 'dart:ui';

class ProductItem {
  final String name;
  final Color color;
  bool isdone;

  ProductItem({
    required this.name,
    required this.color,
    this.isdone = false,
  });

  void toogleIsDone() {
    isdone = !isdone;
  }
}
