import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:middle_east/core/utils/extension.dart';
import 'package:middle_east/core/widgets/md_app_bar.dart';
import 'package:middle_east/core/widgets/md_textfield.dart';
import 'package:middle_east/core/widgets/primary_button.dart';

class AuthPhoneIdPage extends StatefulWidget {
  const AuthPhoneIdPage({super.key});

  @override
  State<AuthPhoneIdPage> createState() => _AuthPhoneIdPageState();
}

class _AuthPhoneIdPageState extends State<AuthPhoneIdPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController idController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
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
                Form(
                  key: formKey,
                  child: Expanded(
                    child: ListView(
                      children: [
                        const SizedBox(height: 44),
                        Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {
                              context.pop();
                            },
                            child: SvgPicture.asset('images/Arrow-Left.svg'),
                          ),
                        ),
                        const SizedBox(height: 32),
                        MdTextFormField(
                          controller: idController,
                          labelText: 'کد ملی',
                          validator: (value) {
                            if (value != null) {
                              if (value.isNotEmpty) {
                                return null;
                              }
                              return "الزامی می باشد";
                            }
                            return "الزامی می باشد";
                          },
                        ),
                        const SizedBox(height: 24),
                        MdTextFormField(
                          controller: phoneController,
                          labelText: 'شماره موبایل',
                          validator: (value) {
                            if (value != null) {
                              if (value.isNotEmpty) {
                                return null;
                              }
                              return "الزامی می باشد";
                            }
                            return "الزامی می باشد";
                          },
                        ),
                        const SizedBox(height: 12),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'کد ملی صاحب خط باید با کد ملی ذکر شده یکسان باشد.',
                            style: context.textTheme.subtitle1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: PrimaryButton(
                    onPress: () {
                      if (formKey.currentState!.validate()) {
                        context.go('/login_phone_id/opt_code');
                      }
                    },
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
