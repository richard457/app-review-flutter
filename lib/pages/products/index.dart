import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spenn/pages/products/controller.dart';
import 'package:spenn/pages/products/widgets/list.dart';
import 'package:spenn/utils/app_colors.dart';
import 'package:spenn/widgets/header.dart';

import 'widgets/fade.dart';
import 'widgets/item_title.dart';
import 'widgets/leafs.dart';
import 'widgets/watermark.dart';
class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductsController>(
      init: ProductsController(),
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.spennGreen,
        body: Stack(
          children: <Widget>[
            Watermark(),
            Leafs(),
            Container(
              alignment: Alignment.center,
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Header(),
                    SizedBox(height: 40),
                    ItemTitle(),
                    Expanded(child: ListProducts()),
                  ],
                ),
              ),
            ),
            Fade(),
          ],
        ),
      ),
    );
  }
}
