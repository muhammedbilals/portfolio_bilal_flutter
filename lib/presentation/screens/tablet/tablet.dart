import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/core/helpers/url_laucher.dart';
import 'package:portfolio_bilal_flutter/presentation/cubits/nav_bar/nav_bar_cubit.dart';
import 'package:portfolio_bilal_flutter/presentation/screens/tablet/pages/tablet_experties_page.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/appbar_button_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/header.dart';
import 'package:portfolio_bilal_flutter/presentation/screens/tablet/pages/tablet_home_page.dart';
import 'package:portfolio_bilal_flutter/presentation/screens/desktop/pages/projects_page.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/social_media_icon.dart';

// ignore: must_be_immutable
class TabletDashboard extends StatefulWidget {
  const TabletDashboard({super.key});

  @override
  State<TabletDashboard> createState() => TabletDashboardState();
}

class TabletDashboardState extends State<TabletDashboard> {
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
    const TabletHomePage(),
    const TabletExpertiesPage(),
    // const ExpertiesPage(),
    // const ContactPage()
  ];
  void onPageChanged(int page) {
    BlocProvider.of<NavBarCubit>(context).changeSelectedIndex(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorblack,
      appBar: AppBar(
        leading: const AppbarButtonWidget(
          title: 'muhammedbilal.dev',
        ),
        leadingWidth: 200,
        toolbarHeight: 80,
        backgroundColor: AppColors.colorblack,
        title: Header(
          onTap: (int index) {
            // print(index);
            context.read<NavBarCubit>().changeSelectedIndex(index);
            pageController.animateToPage(index,
                duration: const Duration(microseconds: 10),
                curve: Curves.fastLinearToSlowEaseIn);
          },
        ),
        actions: [
          SocialMediaIcons(
            image: 'assets/images/github.png',
            onTap: () {
              launch('https://github.com/muhammedbilals', isNewTab: true);
            },
          ),
          const SocialMediaIcons(
            image: 'assets/images/linkedin.png',
          ),
          const SocialMediaIcons(
            image: 'assets/images/whatsapp.png',
          ),
          sboxW,
        ],
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: pageController,
        onPageChanged: (value) => onPageChanged(value),
        children: pages,
      ),
    );
  }

  // var colors = [Colors.orange, Colors.blue, Colors.red, Colors.green];
}
