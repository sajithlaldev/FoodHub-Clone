import 'package:flutter/material.dart';
import 'package:food_hub_clone/utils/colors.dart';
import 'package:food_hub_clone/utils/utils.dart';

import 'widgets/category_products_widget.dart';
import 'widgets/search_widget.dart';

class ProductsSection extends StatelessWidget {
  final _scrollController = ScrollController();
  ProductsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: _size.height - 180 * 0.8,
      color: ColorConstants.backgroundColor,
      child: ListView(
        children: [
          const SearchWidget(),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            controller: _scrollController,
            itemBuilder: (context, index) {
              return const CategoriesProductsSection(
                title: 'Best Selling',
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 20,
              );
            },
            shrinkWrap: true,
            itemCount: 5,
          ),
        ],
      ),
    );
  }
}
