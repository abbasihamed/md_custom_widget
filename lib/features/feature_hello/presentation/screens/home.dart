import 'package:flutter/material.dart';
import 'package:middle_east/core/widgets/md_otp_textfield.dart';
import 'package:middle_east/core/widgets/md_textfield.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(
                width: 300,
                child: MdTextFormField(
                  controller: controller,
                  labelText: "کد ملی",
                  helperText: 'متن کمکی',
                  validator: (value) {
                    if (value != null) {
                      if (value.isNotEmpty) {
                        return null;
                      }
                      return 'خالی';
                    }
                    return 'خالی';
                  },
                ),
              ),
              const SizedBox(height: 20),
              MdOtpField(
                onSubmit: (String verificationCode) {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.abc),
        onPressed: () {
          formKey.currentState!.validate();
        },
      ),
    );
  }
}
