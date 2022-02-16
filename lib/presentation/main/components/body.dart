import 'package:flutter/material.dart';

import '../../basket_section/basket_section.dart';
import '../../categories_section/categories_section.dart';
import '../../products_section/products_section.dart';

class BodySection extends StatelessWidget {
  const BodySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          flex: 3,
          child: CategoriesSection(),
        ),
        Expanded(
          flex: 5,
          child: ProductsSection(),
        ),
        const Expanded(
          flex: 4,
          child: BasketSection(),
        )
      ],
    );
  }
}
