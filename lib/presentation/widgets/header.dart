import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/presentation/controllers/menu_controller.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/appbar_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/responsive.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final sideMenuController = Provider.of<SideMenuController>(context);

    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: sideMenuController.controlMenu,
            icon: const Icon(Icons.menu, color: Colors.black),
          ),
        if (!Responsive.isMobile(context) && !Responsive.isTablet(context))
          const AppBarDeskTop(),
      ],
    );
  }
}
