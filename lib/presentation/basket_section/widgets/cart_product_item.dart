import 'package:flutter/material.dart';
import 'package:food_hub_clone/utils/assets.dart';
import 'package:food_hub_clone/utils/colors.dart';

class CartProductItem extends StatelessWidget {
  final int count;

  const CartProductItem({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Product',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                ),
          ),
        ),
        Container(
            width: 70,
            height: 22,
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorConstants.secondaryColor,
              ),
            ),
            child: QuantityWidget(count: count)),
        const SizedBox(
          width: 16,
        ),
        Text(
          '3.5',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Colors.black,
                fontSize: 14,
              ),
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({
    Key? key,
    required this.count,
  }) : super(key: key);

  final int? count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        count == 1
            ? Expanded(
                flex: 2,
                child: Center(
                  child: Image.asset(
                    Assets.removeIcon,
                    width: 12,
                    height: 12,
                    color: ColorConstants.basicTextColor,
                  ),
                ),
              )
            : const Expanded(
                flex: 2,
                child: Center(
                  child: Icon(
                    Icons.horizontal_rule_outlined,
                    size: 18,
                    color: ColorConstants.secondaryColor,
                  ),
                ),
              ),
        const VerticalDivider(
          color: ColorConstants.secondaryColor,
          width: 0,
        ),
        Expanded(
          flex: 3,
          child: Center(
            child: Text(
              '${count}',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 12,
                    color: ColorConstants.secondaryColor,
                  ),
            ),
          ),
        ),
        const VerticalDivider(
          color: ColorConstants.secondaryColor,
          width: 0,
        ),
        const Expanded(
          flex: 2,
          child: Icon(
            Icons.add,
            size: 20,
            color: ColorConstants.secondaryColor,
          ),
        ),
      ],
    );
  }
}
