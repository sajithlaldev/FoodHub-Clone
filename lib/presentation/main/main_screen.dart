import 'package:flutter/material.dart';
import 'package:food_hub_clone/presentation/main/components/appbar.dart';
import 'package:food_hub_clone/utils/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: PreferredSize(
        child: AppBarWidget(),
        preferredSize: Size.fromHeight(60),
      ),
    );
  }
}
