import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/appbar_button_widget.dart';

//main appbar that can be used across the app

// ignore: must_be_immutable
class AppBarDeskTop extends StatelessWidget {
  final Icon? icons;
  final bool? leadingIcon;
  AppBarDeskTop({super.key, this.icons, this.leadingIcon});
  List<String> titile = ['Home', 'Projects', 'Experties', 'About'];

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          4,
          (index) {
            return AppbarButtonWidget(
              title: titile[index],
            );
          },
        ));
  }
}
