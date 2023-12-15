import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';

class ExpertiesPage extends StatelessWidget {
  const ExpertiesPage({
    super.key,
  });

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
        ],
      ),
    );
  }
}
