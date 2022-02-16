
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
        top: 8,
        bottom: 8,
      ),
      child: SizedBox(
        height: 30,
        child: TextField(
          style: const TextStyle(
            color: ColorConstants.basicTextColor,
            fontSize: 13,
          ),
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: 'Search Items',
            contentPadding: const EdgeInsets.only(top: 4),
            isCollapsed: true,
            border: const UnderlineInputBorder(
              borderSide: BorderSide(width: 0.08),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(width: 0.08),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(width: 0.08),
            ),
            suffixIcon: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.search,
                color: ColorConstants.basicTextColor,
              ),
            ),
            hintStyle: const TextStyle(
              color: ColorConstants.basicTextColor,
              fontSize: 13,
            ),
            isDense: true,
          ),
        ),
      ),
    );
  }
}
