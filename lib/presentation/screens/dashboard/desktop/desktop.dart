import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/core/helpers/url_laucher.dart';
import 'package:portfolio_bilal_flutter/presentation/utils/hover_effect_extention.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/appbar_button_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/button_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/header.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/hover_builder.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/social_media_icon.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/text_container.dart';

// ignore: must_be_immutable
class DesktopDashboard extends StatefulWidget {
  const DesktopDashboard({super.key});

  @override
  State<DesktopDashboard> createState() => _DesktopDashboardState();
}

class _DesktopDashboardState extends State<DesktopDashboard>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
          controller: _tabController,
          onTap: (int index) {},
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
      body: TabBarView(
        physics: const BouncingScrollPhysics(),
        controller: _tabController,
        children: const [
          HomePage(),
          HomePage(),
          HomePage(),
          HomePage(),
        ],
      ),
    );
  }

  var list = ["Home", "Services", "Work", "About"];

  var colors = [Colors.orange, Colors.blue, Colors.red, Colors.green];
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hi, everyone! I'm",
                          style: TextStyle(
                              color: AppColors.colorwhite, fontSize: 25),
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
                          sbox20,
                          const TextContainer(
                            text: 'UI Designer',
                            image: 'assets/images/figma.png',
                          ),
                        ]),
                        sbox20,
                        const SizedBox(
                          width: 500,
                          child: Text(
                            'Built with flutter and local data as-built with flutter and local data baseBuilt with flutter and local data as-built with flutter and local data baseBuilt with flutter and local data as-built with flutter and local data base',
                            style: TextStyle(color: AppColors.colorwhite),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              sbox20,

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: Wrap(spacing: 15, children: [
                  ButtonWidget(
                    icon: Icons.download_for_offline_rounded,
                    text: 'Download CV',
                  ),
                  ButtonWidget(
                    icon: Icons.mail,
                    text: 'Sent a Mail',
                  ),
                ]),
              )
              // Expanded(
              //   child: PageView(
              //       scrollDirection: Axis.vertical,
              //       pageSnapping: true,
              //       controller: controller,
              //       children: List.generate(list.length, (index) {
              //         return Container(
              //           width: MediaQuery.of(context).size.width,
              //           height: double.maxFinite,
              //           color: colors[index],
              //           child: Center(
              //             child: Text(
              //               list[index],
              //               style: const TextStyle(
              //                   color: Colors.white, fontSize: 50),
              //             ),
              //           ),
              //         );
              //       })),
              // )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(100),
            child: Row(
              children: [
                SizedBox(
                        // height: 300,
                        // width: 300,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                                'https://avatars.githubusercontent.com/u/97529912?v=4')))
                    .translateOnHover
              ],
            ),
          ),
        ],
      ),
    );
  }
}
