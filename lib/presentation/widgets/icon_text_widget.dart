import 'package:flutter/material.dart';
import 'package:food_hub_clone/presentation/widgets/icon_with_badge.dart';

import '../../utils/colors.dart';

class IconTextWidget extends StatelessWidget {
  final String label;
  final IconData? iconData;
  final IconData? sufficIconData;
  final Color? color;
  final double? size;

  final String? count;

  const IconTextWidget({
    Key? key,
    required this.label,
    this.count,
    this.iconData,
    this.color,
    this.size,
    this.sufficIconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          count != null
              ? IconWithBadge(
                  count: count!,
                  iconData: iconData!,
                )
              : Icon(
                  iconData,
                  size: 18,
                  color: color ?? ColorConstants.basicTextColor,
                ),
          const SizedBox(
            width: 4,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: color ?? ColorConstants.basicTextColor,
                  fontSize: size ?? 14,
                ),
          ),
          sufficIconData != null
              ? Icon(
                  sufficIconData,
                  size: 18,
                  color: color ?? ColorConstants.basicTextColor,
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
