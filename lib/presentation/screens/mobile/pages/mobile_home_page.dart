import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/button_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/text_container.dart';

class MobiletHomePage extends StatelessWidget {
  const MobiletHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hi, everyone! I'm",
                          style: TextStyle(
                              color: AppColors.colorwhite, fontSize: 25),
                        ),
                        sbox,
                        const Text(
                          'Muhammed Bilal S',
                          style: TextStyle(
                              color: AppColors.colorred,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        sbox,
                        Wrap(
                          spacing: 5,
                          children: [
                            const TextContainer(
                              text: 'Flutter Developer',
                              image: 'assets/images/flutter.png',
                            ),
                            sbox20,
                            const TextContainer(
                              text: 'UI Designer',
                              image: 'assets/images/figma.png',
                            ),
                          ],
                        ),
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
              sbox20,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Wrap(spacing: 15, children: [
                  ButtonWidget(
                      textColor: AppColors.colorwhite,
                      buttonColor: AppColors.colorred,
                      icon: Icons.download_for_offline_rounded,
                      text: 'Download CV',
                      width: 200),
                  ButtonWidget(
                      textColor: AppColors.colorwhite,
                      buttonColor: AppColors.colorred,
                      icon: Icons.mail,
                      text: 'Sent a Mail',
                      width: 200),
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
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 60),
          //   child: Container(
          //     constraints: const BoxConstraints(
          //       maxHeight: 250,
          //       maxWidth: 250,
          //     ),
          //     child: ClipRRect(
          //       borderRadius: BorderRadius.circular(50),
          //       child: Image.network(
          //         'https://avatars.githubusercontent.com/u/97529912?v=4',
          //         fit: BoxFit.cover,
          //       ),
          //     ).translateOnHover,
          //   ),
          // ),
        ],
      ),
    );
  }
}
