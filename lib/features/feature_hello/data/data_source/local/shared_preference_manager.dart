import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceManager {
  getHelloWorld() async {
    var preferences = await SharedPreferences.getInstance();

    return preferences.getString("helloMessage");
  }

  saveHelloWorld(String helloMessage) async {
    var preferences = await SharedPreferences.getInstance();
    await preferences.setString("helloMessage", helloMessage);
  }
}
