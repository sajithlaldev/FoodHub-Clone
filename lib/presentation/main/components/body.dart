import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../basket_section/basket_section.dart';
import '../../categories_section/categories_section.dart';
import '../../products_section/products_section.dart';

class BodySection extends StatelessWidget {
  const BodySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Utils.isMobile(_size.width)
        ? Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                child: ProductsSection(),
              ),
              const BasketSection(),
              const SizedBox(
                height: 16,
              ),
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 3,
                child: CategoriesSection(),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: ProductsSection(),
                ),
              ),
              const Expanded(
                flex: 4,
                child: BasketSection(),
              )
            ],
          );
  }
}
