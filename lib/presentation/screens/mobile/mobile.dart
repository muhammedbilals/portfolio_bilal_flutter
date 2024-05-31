import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/presentation/screens/mobile/pages/mobile_experties_page.dart';
import 'package:portfolio_bilal_flutter/presentation/screens/mobile/pages/mobile_home_page.dart';

import '../../cubits/nav_bar/nav_bar_cubit.dart';

class MobileDashboard extends StatefulWidget {
  const MobileDashboard({super.key});

  @override
  State<MobileDashboard> createState() => _MobileDashboardState();
}

class _MobileDashboardState extends State<MobileDashboard> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    // pageController.addListener(() {
    //   if (pageController.position.userScrollDirection ==
    //       ScrollDirection.reverse) {
    //     pageController.nextPage(
    //         duration: const Duration(milliseconds: 60),
    //         curve: Curves.bounceInOut);
    //   } else if (pageController.position.userScrollDirection ==
    //       ScrollDirection.forward) {
    //     pageController.previousPage(
    //         duration: const Duration(milliseconds: 60), curve: Curves.bounceIn);
    //   }
    // });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  List<Widget> pages = [
    const MobiletHomePage(),
    const MobileExpertiesPage(),
    // const ExpertiesPage(),
    // const ContactPage()
  ];
  void onPageChanged(int page) {
    BlocProvider.of<NavBarCubit>(context).changeSelectedIndex(page);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.colorblack,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              if (scaffoldKey.currentState!.isDrawerOpen) {
                scaffoldKey.currentState!.closeDrawer();
                //close drawer, if drawer is open
              } else {
                scaffoldKey.currentState!.openDrawer();
                //open drawer, if drawer is closed
              }
            },
            icon: const Icon(
              Icons.menu,
              color: AppColors.colorwhite,
            )),
        actionsIconTheme: const IconThemeData(color: AppColors.colorwhite),
        backgroundColor: AppColors.colorblack,
        centerTitle: true,
        title: const Text(
          'Muhammed bilal S',
          style: TextStyle(color: AppColors.colorwhite),
        ),
      ),
      drawer: const Drawer(
        backgroundColor: AppColors.bggray,
      ),
       body: PageView(
        scrollDirection: Axis.vertical,
        controller: pageController,
        onPageChanged: (value) => onPageChanged(value),
        children: pages,
      ),
    );
  }
}
