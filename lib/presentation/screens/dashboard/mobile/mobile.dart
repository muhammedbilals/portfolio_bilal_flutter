import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/header.dart';


class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title:  Header(),
      ),
      body: Column(),

    );
  }
}