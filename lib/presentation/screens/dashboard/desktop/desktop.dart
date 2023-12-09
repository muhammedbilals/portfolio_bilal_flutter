import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/core/helpers/url_laucher.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/appbar_button_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/header.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/social_media_icon.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/text_container.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

class DesktopDashboard extends StatefulWidget {
  const DesktopDashboard({super.key});

  @override
  State<DesktopDashboard> createState() => _DesktopDashboardState();
}

class _DesktopDashboardState extends State<DesktopDashboard> {
  ScrollToId? scrollToId;
  final ScrollController scrollController = ScrollController();

  void _scrollListener() {
    print(scrollToId!.idPosition());
  }

  @override
  void initState() {
    super.initState();

    /// Create ScrollToId instance
    scrollToId = ScrollToId(scrollController: scrollController);

    scrollController.addListener(_scrollListener);
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
        child: SingleChildScrollView(
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
                        style: TextStyle(
                            color: AppColors.colorwhite, fontSize: 25),
                      ),
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          scrollToId!.animateToNext(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease);
                        },
                        child: const Text(
                          'Muhammed Bilal S',
                          style: TextStyle(
                              color: AppColors.colorred,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
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
              buildStackVertical()
            ],
          ),
        ),
      ),
    );
  }

  final List<Color> _colorList = [
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.blue
  ];

  Widget buildStackVertical() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        InteractiveScrollViewer(
          scrollToId: scrollToId,
          children: List.generate(10, (index) {
            return ScrollContent(
              id: '$index',
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 200,
                color: _colorList[index % _colorList.length],
                child: Text(
                  '$index',
                  style: const TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
            );
          }),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(10, (index) {
              return GestureDetector(
                child: Container(
                  width: 100,
                  alignment: Alignment.center,
                  height: 50,
                  color: _colorList[index % _colorList.length],
                  child: Text(
                    '$index',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                onTap: () {
                  /// scroll with animation
                  scrollToId!.animateTo('$index',
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);

                  /// scroll with jump
                  // scrollToId.jumpTo('$index');
                },
              );
            }),
          ),
        )
      ],
    );
  }
}
