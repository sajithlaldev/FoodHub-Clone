import 'package:flutter/material.dart';
import 'package:food_hub_clone/presentation/main/widgets/product_item.dart';
import 'package:food_hub_clone/utils/colors.dart';
import 'package:food_hub_clone/utils/constants.dart';
import 'package:food_hub_clone/utils/stings.dart';

class CategoriesProductsSection extends StatelessWidget {
  final String title;
  const CategoriesProductsSection({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 15,
                    color: ColorConstants.primaryColor,
                  ),
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                color: ColorConstants.basicTextColor,
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 20,
              );
            },
            shrinkWrap: true,
            itemCount: Constants.categories.length,
            itemBuilder: ((context, index) {
              return ProductItem(
                count: index == 3
                    ? 3
                    : index == 5
                        ? 1
                        : null,
              );
            }),
          )
        ],
      ),
    );
  }
}
