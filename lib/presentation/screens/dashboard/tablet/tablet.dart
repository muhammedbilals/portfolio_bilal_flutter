import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/header.dart';


class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title:  Header(),
      ),
    );
  }
}