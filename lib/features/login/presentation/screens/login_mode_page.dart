import 'package:flutter/material.dart';
import 'package:middle_east/core/utils/extension.dart';
import 'package:middle_east/core/widgets/info_button.dart';
import 'package:middle_east/core/widgets/md_app_bar.dart';

class LoginModePage extends StatelessWidget {
  const LoginModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MdCustomAppBar(),
      body: Center(
        child: SizedBox(
          width: 500,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                const SizedBox(height: 54),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'یکی از روش های ورود را انتخاب کنید.',
                    style: context.textTheme.subtitle1,
                  ),
                ),
                const SizedBox(height: 24),
                InfoButton(
                  onPress: () {},
                  title: 'اطلاعات همراه بانک',
                  caption: "امکان استفاده از خدمات بانکداری دیجیتال و شعب",
                  isActive: true,
                ),
                const SizedBox(height: 14),
                InfoButton(
                  onPress: () {},
                  title: 'شماره موبایل و کد ملی',
                  caption: "امکان استفاده از خدمات بانکت",
                  isActive: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
