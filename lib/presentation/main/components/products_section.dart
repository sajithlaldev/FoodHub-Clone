import 'package:flutter/material.dart';
import 'package:food_hub_clone/utils/colors.dart';

import '../widgets/search_widget.dart';

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
      color: ColorConstants.backgroundColor,
      child: ListView(
        children: const [
          SearchWidget(),
        ],
      ),
    );
  }
}
