import 'package:flutter/material.dart';

class AppMessage {
  static showDefaultMessage(BuildContext context, String message) {
    var theme = Theme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: const Color(0xff403F3F),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(20),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              message,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: Color(0xFFFFFFFF)),
            ),
            GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
                child: const Icon(
                  Icons.clear,
                  color: Color(0xFFFFFFFF),
                )),
          ],
        ),
      ),
    );
  }

  static showErrorMessage(BuildContext context, String message) {
    var theme = Theme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: const Color(0xffD20101),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(20),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              message,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: const Color(0xFFFFFFFF)),
            ),
            GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
                child: const Icon(
                  Icons.clear,
                  color: Color(0xFFFFFFFF),
                )),
          ],
        ),
      ),
    );
  }

  static showSuccessMessage(BuildContext context, String message) {
    var theme = Theme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: const Color(0xFFE6F0DA),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(20),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              message,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: const Color(0xff578A1D)),
            ),
            GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
                child: const Icon(
                  Icons.clear,
                  color: Color(0xFFFFFFFF),
                )),
          ],
        ),
      ),
    );
  }

  static showWarningMessage(BuildContext context, String message) {
    var theme = Theme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: const Color(0xFFFFF5E5),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(20),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              message,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: const Color(0xffAD6C00)),
            ),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
              child: const Icon(
                Icons.clear,
                color: Color(0xffAD6C00),
              ),
            ),
          ],
        ),
      ),
    );
  }
}