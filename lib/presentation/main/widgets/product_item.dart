import 'package:flutter/material.dart';
import 'package:food_hub_clone/utils/assets.dart';
import 'package:food_hub_clone/utils/colors.dart';
import 'package:food_hub_clone/utils/stings.dart';

class ProductItem extends StatelessWidget {
  final int? count;

  const ProductItem({Key? key, this.count}) : super(key: key);

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
        Text(
          '3.5',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Colors.black,
              ),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          width: 70,
          height: 22,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
            ),
          ),
          child: count != null
              ? QuantityWidget(count: count)
              : Center(
                  child: Text(
                    Strings.ADD.toUpperCase(),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 12,
                          color: Colors.green,
                        ),
                  ),
                ),
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
                    color: Colors.green,
                  ),
                ),
              ),
        const VerticalDivider(
          color: Colors.green,
          width: 0,
        ),
        Expanded(
          flex: 3,
          child: Center(
            child: Text(
              '${count}',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 12,
                    color: Colors.green,
                  ),
            ),
          ),
        ),
        const VerticalDivider(
          color: Colors.green,
          width: 0,
        ),
        const Expanded(
          flex: 2,
          child: Icon(
            Icons.add,
            size: 20,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
