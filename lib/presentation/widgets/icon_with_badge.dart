import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class IconWithBadge extends StatelessWidget {
  final String count;
  final IconData iconData;

  const IconWithBadge({
    Key? key,
    required this.count,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 25,
      child: Stack(
        children: [
          Positioned(
            top: 4,
            child: Icon(
              iconData,
              size: 18,
              color: ColorConstants.basicTextColor,
            ),
          ),
          Positioned(
            right: 0,
            child: BadgetWidget(
              count: count,
            ),
          ),
        ],
      ),
    );
  }
}

//badge widget
class BadgetWidget extends StatelessWidget {
  final String count;
  const BadgetWidget({
    Key? key,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: ColorConstants.primaryColor,
      ),
      padding: const EdgeInsets.all(2),
      child: Center(
        child: Text(
          count,
          style: const TextStyle(
            fontSize: 10,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
