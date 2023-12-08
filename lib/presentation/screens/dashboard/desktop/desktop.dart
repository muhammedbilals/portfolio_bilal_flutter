import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/core/helpers/url_laucher.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/appbar_button_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/header.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/social_media_icon.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/text_container.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

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
        title: const Header(),
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
      body: Container(
        padding: const EdgeInsets.all(100),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hi, everyone! I'm",
                      style:
                          TextStyle(color: AppColors.colorwhite, fontSize: 25),
                    ),
                    const Text(
                      'Muhammed Bilal S',
                      style: TextStyle(
                          color: AppColors.colorred,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Wrap(spacing: 5, children: [
                      const TextContainer(
                        text: 'Flutter Developer',
                        image: 'assets/images/flutter.png',
                      ),
                      sbox,
                      const TextContainer(
                        text: 'UI Designer',
                        image: 'assets/images/figma.png',
                      )
                    ]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
