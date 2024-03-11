import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/presentation/controllers/menu_controller.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/appbar_button_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/utils/responsive.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Header extends StatelessWidget {
  Header({super.key, this.onTap});

  final void Function(int index)? onTap;

  List<String> titile = ['Home', 'Projects', 'Experties', 'About'];
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    final sideMenuController = Provider.of<SideMenuController>(context);

    return Row(
      mainAxisAlignment: !Responsive.isDesktop(context)
          ? MainAxisAlignment.start
          : MainAxisAlignment.center,
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: sideMenuController.controlMenu,
            icon: const Icon(Icons.menu, color: Colors.black),
          ),
        if (!Responsive.isMobile(context) && !Responsive.isTablet(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              4,
              (index) {
                return AppbarButtonWidget(
                  onTap: () => onTap!(index),
                  title: titile[index],
                );
              },
            ),
          )
      ],
    );
  }
}
