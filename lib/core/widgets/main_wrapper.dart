import 'package:flutter/material.dart';
import 'package:middle_east/features/feature_hello/presentation/screens/home.dart';

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key});
  late BuildContext mContext;

  @override
  Widget build(BuildContext context) {
    mContext = context;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return const Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Home(),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }

  Future<bool> _onBackPressed() async {
    Navigator.pop(mContext);
    return new Future(() => true);
  }
}
