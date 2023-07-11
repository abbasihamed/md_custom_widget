import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
  final String title;
  final String caption;
  final Function() onPress;
  final bool isActive;
  const InfoButton(
      {super.key,
      required this.onPress,
      required this.title,
      required this.caption,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 90,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll<double>(0),
          backgroundColor: MaterialStatePropertyAll<Color>(
              isActive ? const Color(0xf091e42) : const Color(0x08091e42)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        onPressed: onPress,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: isActive ? const Color(0xFFF2994A) :
                    const Color(0xffAEB4C0)),
              ),
              Text(
                caption,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color:
                        isActive ? const Color(0xff4F4F4F) :
                        const Color(0xFFBDBDBD)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}