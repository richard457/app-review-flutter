import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:spenn/utils/app_colors.dart';
import 'package:spenn/utils/formatter.dart';

class Cart extends StatelessWidget {
  
  final int quantity;
  final double amount;

  Cart(this.amount, this.quantity);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: AppColors.warmNeutral,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Valor total",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.gray,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  Formatter.brl(this.amount * this.quantity).symbolOnLeft +'/ 1 point', //point is hardcoded for demo purpose.
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.darkGray,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 50,
              height: 42,
              child: RawMaterialButton(
                // TODO(richard): add the popup.
                onPressed: (){
                  final snackBar = SnackBar(content: Text('You earned 1 points'));
                  Scaffold.of(context).showSnackBar(snackBar);
                },
                fillColor: AppColors.black,
                elevation: 0,
                disabledElevation: 0,
                focusElevation: 0,
                highlightElevation: 0,
                hoverElevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox.expand(
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Feather.play,
                          size: 16,
                          color: AppColors.white,
                        ),
                      ),
                      Positioned(
                        top: 7,
                        right: 7,
                        child: Icon(
                          Feather.plus,
                          size: 11,
                          color: AppColors.green,
                        ),
                      )
                    ],
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
