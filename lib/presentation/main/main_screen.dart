import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_hub_clone/presentation/main/components/appbar.dart';
import 'package:food_hub_clone/presentation/main/components/basket_section.dart';
import 'package:food_hub_clone/presentation/main/components/body.dart';
import 'package:food_hub_clone/presentation/main/components/sub_header.dart';
import 'package:food_hub_clone/utils/colors.dart';

import 'components/categories_section.dart';
import 'components/products_section.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: const PreferredSize(
        child: AppBarWidget(),
        preferredSize: Size.fromHeight(60),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: _size.width * 0.2),
        child: Column(
          children: const [
            SubHeader(),
            BodySection(),
          ],
        ),
      ),
    );
  }
}
