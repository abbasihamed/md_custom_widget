import 'package:flutter/material.dart';
import 'package:middle_east/core/utils/extension.dart';
import 'package:middle_east/core/widgets/md_app_bar.dart';
import 'package:middle_east/core/widgets/md_otp_textfield.dart';
import 'package:middle_east/core/widgets/primary_button.dart';
import 'package:middle_east/core/widgets/secondary_button.dart';

class AuthOtpPage extends StatelessWidget {
  const AuthOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MdCustomAppBar(),
      body: Center(
        child: SizedBox(
          width: 500,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      const SizedBox(height: 54),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'کد ارسال شده به شماره موبایل را وارد نمایید.',
                          style: context.textTheme.subtitle1,
                        ),
                      ),
                      const SizedBox(height: 24),
                      MdOtpField(onSubmit: (value) {})
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: SecondaryButton(
                    onPress: () {},
                    title: 'ارسال مجدد کد ۱:۵۳',
                    isActive: false,
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: PrimaryButton(
                    onPress: () {},
                    title: 'تایید',
                    isActive: true,
                  ),
                ),
                const SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
