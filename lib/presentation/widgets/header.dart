import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/responsive.dart';


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    // final sideMenuController = Provider.of<SideMenuController>(context);

    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed:null,
            //  sideMenuController.controlMenu,
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
        if (!Responsive.isMobile(context))
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Dashboard'),
          ),
      ],
    );
  }
}