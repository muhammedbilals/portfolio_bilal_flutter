import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/appbar_button_widget.dart';

//main appbar that can be used across the app

class AppBarDeskTop extends StatelessWidget {
  final Icon? icons;
  final bool? leadingIcon;
  const AppBarDeskTop({super.key, this.icons, this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppbarButtonWidget(
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
    );
  }
}