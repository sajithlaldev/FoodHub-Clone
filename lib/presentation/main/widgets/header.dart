import 'package:flutter/material.dart';
import 'package:food_hub_clone/utils/assets.dart';
import 'package:food_hub_clone/utils/constants.dart';
import 'package:food_hub_clone/utils/stings.dart';

import '../../widgets/icon_text_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    //for padding on left and right
    final _sidePadding = SizedBox(
      width: _size.width * 0.21,
    );

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: Row(
        children: [
          _sidePadding,
          Image.asset(
            Assets.logo,
            fit: BoxFit.fitWidth,
          ),
          const Spacer(),
          Constants.horizontalPadding,
          const IconTextWidget(
            label: Strings.ENGB,
            iconData: Icons.language,
            sufficIconData: Icons.arrow_drop_down,
          ),
          Constants.horizontalPadding,
          IconTextWidget(
            label: Strings.BASKET.toUpperCase(),
            iconData: Icons.shopping_cart,
            count: '3',
          ),
          Constants.horizontalPadding,
          Text(
            Strings.LOGIN.toUpperCase(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          _sidePadding
        ],
      ),
    );
  }
}
