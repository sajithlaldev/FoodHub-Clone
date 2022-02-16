
import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../components/sub_header.dart';

class SubHeaderItems extends StatelessWidget {
  const SubHeaderItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SubHeaderItemWidget(
          caption: '12 Reviews',
          iconData: Icons.star_outline,
          value: '3.8',
        ),
        VerticalDivider(
          thickness: 0.5,
        ),
        SubHeaderItemWidget(
          caption: 'Distance',
          iconData: Icons.location_on,
          value: '0.05 ml',
        ),
        VerticalDivider(
          thickness: 0.5,
        ),
        SubHeaderItemWidget(
          caption: 'Collection',
          iconData: Icons.shopping_bag_outlined,
          value: '15 mins',
        ),
        VerticalDivider(
          thickness: 0.5,
        ),
        SubHeaderItemWidget(
          caption: 'Delivery',
          iconData: Icons.delivery_dining,
          value: '45 mins',
        ),
        VerticalDivider(
          thickness: 0.5,
        ),
        SubHeaderItemWidget(
          value: 'Delivery: \$2.0',
          caption: 'Min \$10.0',
        ),
        VerticalDivider(
          thickness: 0.5,
        ),
        FavoriteWidget(),
      ],
    );
  }
}

class SubHeaderItemWidget extends StatelessWidget {
  final String value;
  final IconData? iconData;
  final String caption;

  const SubHeaderItemWidget({
    Key? key,
    required this.caption,
    this.iconData,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 2,
        left: 10,
        right: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              iconData != null
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          iconData,
                          color: ColorConstants.primaryColor,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                      ],
                    )
                  : const SizedBox(
                      height: 20,
                    ),
              Text(
                value,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            caption,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w300,
                ),
          )
        ],
      ),
    );
  }
}
