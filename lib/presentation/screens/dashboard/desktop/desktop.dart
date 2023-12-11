import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/core/helpers/url_laucher.dart';
import 'package:portfolio_bilal_flutter/presentation/utils/hover_effect_extention.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/appbar_button_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/button_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/header.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/hover_builder.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/pages/home_page.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/pages/projects_page.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/social_media_icon.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/text_container.dart';

// ignore: must_be_immutable
class DesktopDashboard extends StatefulWidget {
  const DesktopDashboard({super.key});

  @override
  State<DesktopDashboard> createState() => _DesktopDashboardState();
}

class _DesktopDashboardState extends State<DesktopDashboard> {
  final homeKey = GlobalKey();
  final projectsKey = GlobalKey();
  final expertiesKey = GlobalKey();
  final aboutKey = GlobalKey();
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
            if (index == 1) {
              Scrollable.ensureVisible(homeKey.currentContext!);
            } else if (index == 2) {
              Scrollable.ensureVisible(projectsKey.currentContext!);
            } else if (index == 3) {
              Scrollable.ensureVisible(expertiesKey.currentContext!);
            } else if (index == 4) {
              Scrollable.ensureVisible(aboutKey.currentContext!);
            }
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
            image: 'assets/images/x.png',
          ),
          const SocialMediaIcons(
            image: 'assets/images/whatsapp.png',
          ),
          sboxW,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProjectsPage(key: projectsKey),
            HomePage(key: expertiesKey),
            HomePage(key: aboutKey),
          ],
        ),
      ),
    );
  }

  var list = ["Home", "Services", "Work", "About"];

  var colors = [Colors.orange, Colors.blue, Colors.red, Colors.green];
}
