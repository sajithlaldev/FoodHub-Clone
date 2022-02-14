import 'package:flutter/material.dart';

import '../widgets/subheader_item.dart';

class SubHeader extends StatelessWidget {
  const SubHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return SizedBox(
      height: 75,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Text(
              'Indian Express',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              width: 1,
            ),
            const Icon(
              Icons.info_outline,
              color: Colors.lightBlue,
              size: 20,
            ),
            const SizedBox(
              width: 16,
            ),
            const SubHeaderItemWidget(
              caption: '12 Reviews',
              iconData: Icons.star_outline,
              value: '3.8',
            ),
            const VerticalDivider(
              thickness: 0.5,
            ),
            const SubHeaderItemWidget(
              caption: 'Distance',
              iconData: Icons.location_on,
              value: '0.05 ml',
            ),
            const VerticalDivider(
              thickness: 0.5,
            ),
            const SubHeaderItemWidget(
              caption: 'Collection',
              iconData: Icons.shopping_bag_outlined,
              value: '15 mins',
            ),
            const VerticalDivider(
              thickness: 0.5,
            ),
            const SubHeaderItemWidget(
              caption: 'Delivery',
              iconData: Icons.shopping_bag_outlined,
              value: '45 mins',
            ),
          ],
        ),
      ),
    );
  }
}
