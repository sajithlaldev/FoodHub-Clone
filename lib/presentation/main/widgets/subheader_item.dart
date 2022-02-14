import 'package:flutter/material.dart';
import 'package:food_hub_clone/utils/colors.dart';

class SubHeaderItemWidget extends StatelessWidget {
  final String value;
  final IconData iconData;
  final String caption;

  const SubHeaderItemWidget({
    Key? key,
    required this.caption,
    required this.iconData,
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
            children: [
              Icon(
                iconData,
                color: ColorConstants.primaryColor,
                size: 20,
              ),
              const SizedBox(
                width: 2,
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
