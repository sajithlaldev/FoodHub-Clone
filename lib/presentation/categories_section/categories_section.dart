import 'package:flutter/material.dart';
import 'package:food_hub_clone/utils/colors.dart';
import 'package:food_hub_clone/utils/constants.dart';
import 'package:food_hub_clone/utils/stings.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.ITEMS.toUpperCase(),
              style: const TextStyle(
                fontSize: 15,
                color: ColorConstants.primaryColor,
              ),
            ),
            const SizedBox(
              height: 20,
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
                String category = Constants.categories[index];
                return InkWell(
                  onTap: () {},
                  child: Text(
                    category,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
