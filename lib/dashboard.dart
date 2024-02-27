import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/presentation/screens/dashboard/desktop/desktop.dart';
import 'package:portfolio_bilal_flutter/presentation/screens/dashboard/mobile/mobile.dart';
import 'package:portfolio_bilal_flutter/presentation/screens/dashboard/tablet/tablet.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/responsive.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: DesktopDashboard(),
      mobile: MobileDashboard(),
      tablet: TabletDashboard(),
    );
  }
}
