import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/text_container.dart';

class MobileDashboard extends StatefulWidget {
  const MobileDashboard({super.key});

  @override
  State<MobileDashboard> createState() => _MobileDashboardState();
}

class _MobileDashboardState extends State<MobileDashboard> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
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
                      sbox20,
                      const TextContainer(
                        text: 'UI Designer',
                        image: 'assets/images/figma.png',
                      ),
                      const TextContainer(
                        text: 'UI Designer',
                        image: 'assets/images/figma.png',
                      ),
                    ]),
                    sbox20,
                    SizedBox(
                      width: 80.w,
                      child: const Text(
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
          
        ],
      ),
    );
  }
}
