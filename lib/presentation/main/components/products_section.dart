import 'package:flutter/material.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        ),
      width: double.infinity,
      height: 600,
      color: Colors.white,
    );
  }
}
