import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:web_browser_detect/web_browser_detect.dart';

final items = [
  'ب',
  'پ',
  'ت',
  'ث',
  'ج',
  'ح',
  'د',
  'ژ',
  'س',
  'ص',
  'ط',
  'ع',
  'ق',
  'ک',
  'گ',
  'ل',
  'م',
  'ن',
  'و',
  'ه',
  'ی'
];

class Helpers {
  static Future<void> redirectToUrl(String url, {String type = "_self"}) async {
    if (await canLaunchUrlString(url)) {
      //  await launchUrl(Uri.parse(url), webOnlyWindowName: type);

      if (Browser.detectOrNull()?.browser == "safari" ||
          Browser.detectOrNull()?.browser == "Safari") {
        await launchUrl(Uri.parse(url), webOnlyWindowName: "_self");
      } else {
        await launchUrl(Uri.parse(url));
      }
    } else {
      throw 'Could not launch $url';
    }
  }

  static String replaceArabicNumber(String input) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const arabic = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];
    input = input.replaceAll(",", "");
    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(arabic[i], english[i]);
    }
    return input;
  }

  static String replaceEnglishNumber(String input, {bool seprate = false}) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const arabic = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(english[i], arabic[i]);
    }

    if (seprate) {
      final inplist = <String>[];
      for (int j = input.split("").length; j > 0; j = j - 3) {
        if (j >= 3) {
          inplist.add(input[j - 1]);
          inplist.add(input[j - 2]);
          inplist.add(input[j - 3]);
          inplist.add(",");
        } else if (j >= 2) {
          inplist.add(input[j - 1]);
          inplist.add(input[j - 2]);
        } else if (j >= 1) {
          inplist.add(input[j - 1]);
        }
      }

      input = inplist.reversed.join("");

      if (input == "") {
        input = "۰";
      }
      if (input.startsWith(",")) {
        input = input.replaceFirst(",", "");
      }
    }
    return input;
  }
}
