import 'package:flutter/material.dart';

import 'header.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1,
            offset: const Offset(0, 6),
            blurRadius: 20,
          )
        ],
      ),
      child: const HeaderWidget(),
    );
  }
}
