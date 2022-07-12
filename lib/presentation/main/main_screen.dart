import 'package:flutter/material.dart';
import 'package:food_hub_clone/presentation/main/components/appbar.dart';
import 'package:food_hub_clone/presentation/main/components/body.dart';
import 'package:food_hub_clone/presentation/main/components/sub_header.dart';
import 'package:food_hub_clone/utils/colors.dart';
import '../../utils/utils.dart';
import 'components/drawer.dart';

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
      drawer: const AppDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: _size.width * Utils.getScreenOffset(_size.width),
        ),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Utils.isMobile(_size.width)
                    ? const SizedBox(
                        height: 20,
                      )
                    : const SubHeader(),
                const BodySection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
