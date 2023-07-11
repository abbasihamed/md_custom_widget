import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:middle_east/core/utils/extension.dart';
import 'package:middle_east/core/widgets/md_app_bar.dart';
import 'package:middle_east/core/widgets/md_textfield.dart';
import 'package:middle_east/core/widgets/primary_button.dart';

class AuthPhoneIdPage extends StatelessWidget {
  const AuthPhoneIdPage({super.key});

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
                      const SizedBox(height: 44),
                      Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset('images/Arrow-Left.svg'),
                      ),
                      const SizedBox(height: 32),
                      const MdTextFormField(
                        labelText: 'کد ملی',
                      ),
                      const SizedBox(height: 24),
                      const MdTextFormField(
                        labelText: 'شماره موبایل',
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'کد ملی صاحب خط باید با کد ملی ذکر شده یکسان باشد.',
                        style: context.textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
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
