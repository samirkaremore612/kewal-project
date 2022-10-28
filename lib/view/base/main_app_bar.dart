import 'package:flutter/material.dart' hide MenuBar ;
import 'package:flutter_grocery/helper/route_helper.dart';
import 'package:flutter_grocery/utill/app_constants.dart';
import 'package:flutter_grocery/utill/dimensions.dart';
import 'package:flutter_grocery/utill/images.dart';
import 'package:flutter_grocery/utill/styles.dart';
import 'package:flutter_grocery/view/base/menu_bar.dart';


class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Theme.of(context).cardColor,
        width: 1170.0,
        height: 45.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, RouteHelper.menu),
                child: Row(
                children: [
                  SizedBox(width: Dimensions.PADDING_SIZE_SMALL),
                ],
              )),
            ),
            MenuBar(),
          ],
        )
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.maxFinite, 50);
}
