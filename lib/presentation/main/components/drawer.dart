import 'package:flutter/material.dart';

import '../../../utils/assets.dart';
import '../../../utils/stings.dart';
import '../../widgets/icon_text_widget.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Container(
      width: _size.width * 0.6,
      color: Colors.white,
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  size: 32,
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              Image.asset(
                Assets.logo,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              Strings.LOGIN.toUpperCase(),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const IconTextWidget(
            label: Strings.ENGB,
            iconData: Icons.language,
          ),
        ],
      ),
    );
  }
}
