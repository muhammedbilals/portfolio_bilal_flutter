import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/appbar_button_widget.dart';

//main appbar that can be used across the app

class AppBarWidget extends StatelessWidget {
  final Icon? icons;
  final bool? leadingIcon;
  const AppBarWidget({super.key, this.icons, this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        
          AppbarButtonWidget(
            selected: true,
            title: 'Home',
          ),
          AppbarButtonWidget(
            title: 'Projects',
          ),
          AppbarButtonWidget(
            title: 'Experties',
          ),
          AppbarButtonWidget(
            title: 'About',
          )
        ],
      ),
    );
  }
}
