import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/stings.dart';
import 'widgets/cart_product_item.dart';

class BasketSection extends StatelessWidget {
  const BasketSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.YOUR_BASKET.toUpperCase(),
              style: const TextStyle(
                fontSize: 15,
                color: ColorConstants.primaryColor,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 20,
                );
              },
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: ((context, index) {
                return CartProductItem(
                  count: index == 1 ? 1 : 5,
                );
              }),
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(
              thickness: 0.5,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Sub Total',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '10.5',
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '20% Online Discount',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '-2.71',
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 12,
                          color: Colors.green,
                        ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const TextField(
              style: TextStyle(
                color: ColorConstants.basicTextColor,
                fontSize: 12,
              ),
              decoration: InputDecoration(
                hintText: Strings.INSTRUCTION_CAPTION,
                border: UnderlineInputBorder(
                  borderSide: BorderSide(width: 0.08),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 0.08),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 0.08),
                ),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
                isDense: true,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Any food allergy?',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: ColorConstants.tertiaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Text(
                  'Get it by',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: ColorConstants.tertiaryColor,
                        fontSize: 12,
                      ),
                ),
                const SizedBox(
                  width: 16,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    '11:45, Feb 16',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              thickness: 0.5,
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    ColorConstants.secondaryColor,
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                  ),
                  child: Text(
                    Strings.CHECKOUT.toUpperCase(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
