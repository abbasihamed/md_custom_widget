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
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
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
              TextFieldBelowTextAnim(
                text: field.errorText ?? '',
                isError: true,
                style: context.theme.inputDecorationTheme.errorStyle,
              ),
            if (!field.hasError && helperText != null && helperText!.isNotEmpty)
              TextFieldBelowTextAnim(
                text: helperText ?? '',
                isError: false,
                style: context.theme.inputDecorationTheme.helperStyle,
              )
          ],
        );
      },
    );
  }
}

class TextFieldBelowTextAnim extends StatefulWidget {
  final String text;
  final bool isError;
  final TextStyle? style;

  const TextFieldBelowTextAnim({
    super.key,
    required this.text,
    this.style,
    required this.isError,
  });

  @override
  State<TextFieldBelowTextAnim> createState() => _TextFieldBelowTextAnimState();
}

class _TextFieldBelowTextAnimState extends State<TextFieldBelowTextAnim>
    with SingleTickerProviderStateMixin {
  late AnimationController animation;
  late Animation<double> _fadeInFadeOut;
  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 1.0).animate(animation);
    animation.forward();
  }

  @override
  void didUpdateWidget(covariant TextFieldBelowTextAnim oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.text != widget.text) {
      animation.reset();
    }
    animation.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animation.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeInFadeOut,
      child: Padding(
        padding: const EdgeInsets.only(right: 4, top: 4),
        child: Row(
          children: [
            if (widget.isError)
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: SvgPicture.asset('images/error.svg'),
              ),
            Expanded(
              child: Text(
                widget.text,
                style: widget.style,
                overflow: TextOverflow.visible,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
