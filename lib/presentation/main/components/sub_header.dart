import 'package:flutter/material.dart';
import 'package:food_hub_clone/presentation/widgets/icon_text_widget.dart';
import 'package:food_hub_clone/utils/colors.dart';

import '../widgets/subheader_items.dart';

class SubHeader extends StatelessWidget {
  const SubHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            RestuarantNameWidget(),
            SizedBox(
              width: 14,
            ),
            SubHeaderItems(),
            Spacer(),
            SubHeaderRightSection()
          ],
        ),
      ),
    );
  }
}

class SubHeaderRightSection extends StatelessWidget {
  const SubHeaderRightSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 4,
          ),
          decoration: BoxDecoration(
            color: ColorConstants.primaryColor,
            borderRadius: BorderRadius.circular(1),
          ),
          child: Text(
            '20% OFF',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 6,
          ),
          decoration: BoxDecoration(
            color: ColorConstants.primaryColor,
            borderRadius: BorderRadius.circular(2),
          ),
          child: const IconTextWidget(
            label: 'DELIVERY',
            iconData: Icons.delivery_dining,
            size: 10,
            sufficIconData: Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class RestuarantNameWidget extends StatelessWidget {
  const RestuarantNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Indian Express',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            width: 2,
          ),
          const Icon(
            Icons.info_outline,
            color: Colors.lightBlue,
            size: 16,
          ),
        ],
      ),
    );
  }
}

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Icon(
        Icons.favorite_border,
        color: ColorConstants.primaryColor,
      ),
    );
  }
}
