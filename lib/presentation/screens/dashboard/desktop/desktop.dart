import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/header.dart';



class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Header(),
      ),
    );
  }
}