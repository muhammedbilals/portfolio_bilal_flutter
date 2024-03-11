import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/experties_list_widget.dart';

class ExpertiesPage extends StatefulWidget {
  const ExpertiesPage({
    super.key,
  });

  @override
  State<ExpertiesPage> createState() => _ExpertiesPageState();
}

class _ExpertiesPageState extends State<ExpertiesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(100.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Experties",
              style: TextStyle(color: AppColors.colorwhite, fontSize: 25),
            ),
          ),
          sbox5,
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "Tools and services i am using for my projects Tools and services i am using for my projects",
              style: TextStyle(
                  color: AppColors.colorwhite.withOpacity(0.5), fontSize: 16),
            ),
          ),
          sbox20,
          Expanded(
            child: DefaultTabController(
              length: 4,
              initialIndex: 1,
              child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      pinned: true,
                      elevation: 0,
                      toolbarHeight: 100,
                      backgroundColor: AppColors.colorblack,
                      bottom: const PreferredSize(
                          preferredSize: Size.fromHeight(0),
                          child: SizedBox.shrink()),
                      flexibleSpace: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          sbox20,
                          ButtonsTabBar(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            buttonMargin: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            height: 52,
                            splashColor: AppColors.colorwhite.withOpacity(0.2),

                            controller: _tabController,
                            elevation: 1,
                            borderWidth: 0.5,
                            borderColor: AppColors.colorwhite,
                            backgroundColor: AppColors.colorblack, radius: 35,
                            unselectedBackgroundColor: AppColors.colorgrey,
                            labelStyle: const TextStyle(
                              color: AppColors.colorwhite,
                              fontWeight: FontWeight.w500,
                            ),
                            unselectedBorderColor: AppColors.colorblack,
                            unselectedLabelStyle: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            // Add your tabs here
                            tabs: const [
                              Tab(
                                text: 'Frontend & UI Tools',
                              ),
                              Tab(
                                text: 'Backend, API & Database',
                              ),
                              Tab(
                                text: 'Development Tools',
                              ),
                              Tab(
                                text: 'Management Tools',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                    physics: const BouncingScrollPhysics(),
                    controller: _tabController,
                    children: [
                      ExpertiesListWidget(crossAxisCount: 3, height: 10.h),
                      const Text('data',
                          style: TextStyle(color: AppColors.colorwhite)),
                      const Text('data',
                          style: TextStyle(color: AppColors.colorwhite)),
                      const Text('data',
                          style: TextStyle(color: AppColors.colorwhite))
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
