import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/presentation/controllers/menu_controller.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/appbar/appbar_desktop.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/appbar_button_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/responsive.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  Header({super.key, this.onTap, this.controller});

  final void Function(int index)? onTap;
  final TabController? controller;
  List<String> titile = ['Home', 'Projects', 'Experties', 'About'];

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
          // Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: List.generate(
          //       4,
          //       (index) {
          //         return AppbarButtonWidget(
          //           onTap: () => onTap!(index),
          //           title: titile[index],
          //         );
          //       },
          //     ))
          ButtonsTabBar(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            buttonMargin:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            height: 55,
            controller: controller,
            elevation: 1,
            backgroundColor: Colors.red, radius: 15,
            unselectedBackgroundColor: AppColors.colorwhite,
            labelStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            // Add your tabs here
            tabs: const [
              Tab(
                text: 'Home',
              ),
              Tab(
                text: 'Experience',
              ),
              Tab(
                text: 'Projects',
              ),
              Tab(
                text: 'About',
              ),
            ],
          ),
      ],
    );
  }
}
