import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/button_widget.dart';

import 'package:portfolio_bilal_flutter/presentation/widgets/textfield_widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                "Contact Me",
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
            sbox20,
            Row(
              children: [
                TextFieldWidget(
                  fillColor: Colors.grey[200],
                  hintText: 'Name',
                  hintTextColor: Colors.grey[400],
                  prefixIcon: Icons.person,
                ),
                const Spacer(),
                TextFieldWidget(
                  fillColor: Colors.grey[200],
                  hintText: 'Email',
                  hintTextColor: Colors.grey[400],
                  prefixIcon: Icons.email_outlined,
                ),
              ],
            ),
            Row(
              children: [
                TextFieldWidget(
                  fillColor: Colors.grey[200],
                  hintText: 'Message',
                  hintTextColor: Colors.grey[400],
                  prefixIcon: Icons.message_outlined,
                ),
                const Spacer(),
                ButtonWidget(
                    text: 'Submit',
                    width: 40.w,
                    buttonColor: AppColors.colorred,
                    textColor: AppColors.colorwhite)
              ],
            )
          ],
        ),
      ),
    );
  }
}
