import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:middle_east/core/resources/color_manager.dart';
import 'package:middle_east/core/utils/extension.dart';

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