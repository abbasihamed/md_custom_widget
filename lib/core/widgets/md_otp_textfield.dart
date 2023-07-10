import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:middle_east/core/resources/color_manager.dart';
import 'package:middle_east/core/utils/extension.dart';

class MdOtpField extends StatelessWidget {
  final void Function(String value)? onSubmit;
  const MdOtpField({
    super.key,
    this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: OtpTextField(
          numberOfFields: 4,
          borderRadius: BorderRadius.circular(5),
          fillColor: ColorManager.instance.grayColor.withOpacity(0.02),
          borderWidth: 2,
          filled: true,
          fieldWidth: 60,
          focusedBorderColor: context
              .theme.inputDecorationTheme.enabledBorder!.borderSide.color,
          enabledBorderColor: context
              .theme.inputDecorationTheme.enabledBorder!.borderSide.color,
          borderColor: context
              .theme.inputDecorationTheme.enabledBorder!.borderSide.color,
          showFieldAsBox: true,
          onSubmit: onSubmit, // end onSubmit
        ),
      ),
    );
  }
}
