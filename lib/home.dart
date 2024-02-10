import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/presentation/controllers/menu_controller.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/side_menu.dart';
import 'package:provider/provider.dart';

import 'dashboard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    final sideMenuController = Provider.of<SideMenuController>(context);

    return Scaffold(
        key: sideMenuController.scaffoldKey,
        drawer: const SideMenu(),
        body: const SafeArea(
          child: Expanded(flex: 5, child: Dashboard()),
        ));
  }
}
