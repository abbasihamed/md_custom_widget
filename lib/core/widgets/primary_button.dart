import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function() onPress;
  final bool isActive;
  const PrimaryButton(
      {super.key,
      required this.onPress,
      required this.title,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll<double>(0),
          backgroundColor: MaterialStatePropertyAll<Color>(
              isActive ? const Color(0xffFFAB00) :
              const Color(0x08091e42)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        onPressed: onPress,
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: isActive ? Colors.black :
                const Color(0x4f1e424f),
              ),
        ),
      ),
    );
  }
}