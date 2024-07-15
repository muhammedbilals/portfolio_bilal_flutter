import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/helpers/url_laucher.dart';
import 'package:portfolio_bilal_flutter/presentation/screens/mobile/pages/mobile_experties_page.dart';
import 'package:portfolio_bilal_flutter/presentation/screens/mobile/pages/mobile_home_page.dart';
import 'package:portfolio_bilal_flutter/presentation/screens/mobile/pages/mobile_projects_page.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/social_media_icon.dart';

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
    // const MobileExpertiesPage(),
    const MobileProjectsPage(),
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
        // leading: IconButton(
        //     onPressed: () {
        //       if (scaffoldKey.currentState!.isDrawerOpen) {
        //         scaffoldKey.currentState!.closeDrawer();
        //         //close drawer, if drawer is open
        //       } else {
        //         scaffoldKey.currentState!.openDrawer();
        //         //open drawer, if drawer is closed
        //       }
        //     },
        //     icon: const Icon(
        //       Icons.menu,
        //       color: AppColors.colorwhite,
        //     )),
        // actionsIconTheme: const IconThemeData(color: AppColors.colorwhite),
        backgroundColor: AppColors.colorblack,
        centerTitle: true,
        title: const Text(
          'Muhammed bilal S',
          style: TextStyle(color: AppColors.colorwhite),
        ),
        actions: [
          SocialMediaIcons(
            image: 'assets/images/github.png',
            onTap: () {
              launch('https://github.com/muhammedbilals', isNewTab: true);
            },
          ),
          SocialMediaIcons(
            image: 'assets/images/linkedin.png',
            onTap: () {
              launch('https://www.linkedin.com/in/muhammedbilals/');
            },
          ),
          SocialMediaIcons(
            image: 'assets/images/whatsapp.png',
            onTap: () {
              launch('https://wa.me/+919497705305');
            },
          ),
        ],
      ),

      // drawer: const Drawer(
      //   backgroundColor: AppColors.bggray,
      // ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: pageController,
        onPageChanged: (value) => onPageChanged(value),
        children: pages,
      ),
    );
  }
}
