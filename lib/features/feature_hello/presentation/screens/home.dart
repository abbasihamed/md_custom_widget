import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:middle_east/core/resources/color_manager.dart';
import 'package:middle_east/core/utils/extension.dart';

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
                  validator: (value) {
                    print(value);
                    if (value != null) {
                      if (value.isNotEmpty) {
                        print('1');
                        return null;
                      }
                      if (value.isEmpty) {
                        return 'خالی';
                      }
                    }

                    print('2');
                    return 'خطا';
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

class MdTextFormField extends StatelessWidget {
  final String? labelText;
  final String? helperText;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final TextStyle? style;
  final TextDirection? textDirection;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final void Function(String value)? onFieldSubmitted;
  final TextInputAction? textInputAction;
  const MdTextFormField({
    super.key,
    this.labelText,
    this.helperText,
    this.validator,
    this.controller,
    this.onChanged,
    this.style,
    this.textDirection,
    this.inputFormatters,
    this.focusNode,
    this.keyboardType,
    this.maxLength,
    this.maxLines = 1,
    this.minLines,
    this.onFieldSubmitted,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return FormField(
      validator: validator,
      builder: (field) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              maxLength: maxLength,
              maxLines: maxLines,
              minLines: minLines,
              style: style ??
                  TextStyle(
                    color: ColorManager.instance.blackColor,
                    fontSize: 20,
                  ),
              decoration: InputDecoration(
                labelText: labelText,
                labelStyle: field.hasError
                    ? context.theme.inputDecorationTheme.labelStyle!
                        .copyWith(color: ColorManager.instance.redColor)
                    : null,
                floatingLabelStyle: field.hasError
                    ? context.theme.inputDecorationTheme.labelStyle!
                        .copyWith(color: ColorManager.instance.redColor)
                    : null,
                border: context.theme.inputDecorationTheme.errorBorder,
                enabledBorder: field.hasError
                    ? context.theme.inputDecorationTheme.errorBorder
                    : context.theme.inputDecorationTheme.enabledBorder,
                focusedBorder: field.hasError
                    ? context.theme.inputDecorationTheme.errorBorder
                    : context.theme.inputDecorationTheme.focusedBorder,
                errorBorder: context.theme.inputDecorationTheme.errorBorder,
              ),
              controller: controller,
              textDirection: textDirection ?? TextDirection.ltr,
              inputFormatters: inputFormatters,
              focusNode: focusNode,
              keyboardType: keyboardType,
              onChanged: (value) {
                field.setValue(value);
                onChanged?.call(value);
              },
              onFieldSubmitted: onFieldSubmitted,
              showCursor: true,
              textInputAction: textInputAction,
            ),
            if (field.hasError)
              Padding(
                padding: const EdgeInsets.only(right: 4, top: 4),
                child: Row(
                  children: [
                    SvgPicture.asset('images/error.svg'),
                    const SizedBox(width: 8),
                    Text(
                      field.errorText ?? '',
                      style: TextStyle(
                        color: context.theme.errorColor,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
