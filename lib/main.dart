import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:middle_east/config/app_theme.dart';
import 'package:middle_east/core/widgets/main_wrapper.dart';
import 'package:middle_east/features/feature_hello/presentation/bloc/hello/hello_bloc.dart';
import 'package:middle_east/features/feature_hello/presentation/screens/home.dart';
import 'package:middle_east/locator.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: Home(),
      ),
    );
  }
}

// void main() async {
//   await setup();
//   setPathUrlStrategy();
//   runApp(LayoutBuilder(builder: (context, constraints) {
//     return MaterialApp(
//       title: 'بانک خاورمیانه',
//       onGenerateRoute: (settings) {},
//       home: MultiBlocProvider(
//           providers: [
//             BlocProvider(create: (_) => locator<HelloBloc>()),
//           ],
//           child: ResponsiveWrapper(
//             child: MaterialApp.router(
//               routerDelegate: _router.routerDelegate,
//               routeInformationParser: _router.routeInformationParser,
//               routeInformationProvider: _router.routeInformationProvider,
//               builder: (context, child) => ResponsiveWrapper.builder(
//                 child,
//                 maxWidth: 1900,
//                 minWidth: 280,
//                 defaultScale: true,
//                 breakpoints: [
//                   const ResponsiveBreakpoint.autoScale(240, name: ':xSM'),
//                   const ResponsiveBreakpoint.autoScale(320, name: ':xSM'),
//                   const ResponsiveBreakpoint.autoScale(400, name: 'SM'),
//                   const ResponsiveBreakpoint.autoScale(600, name: 'MD'),
//                   const ResponsiveBreakpoint.autoScale(800, name: 'LG'),
//                   const ResponsiveBreakpoint.autoScale(1000, name: 'xl'),
//                   const ResponsiveBreakpoint.autoScale(1200, name: 'xxl'),
//                   const ResponsiveBreakpoint.autoScale(1600, name: 'xxxl'),
//                   const ResponsiveBreakpoint.autoScale(2000, name: '4xl'),
//                   const ResponsiveBreakpoint.autoScale(2200, name: '5xl')
//                 ],
//               ),
//             ),
//           )),
//       initialRoute: "/",
//       localizationsDelegates: const [
//         GlobalCupertinoLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
//       supportedLocales: const [
//         Locale("fa", "IR"),
//       ],
//       locale: const Locale("fa", "IR"),
//     );
//   }));
// }

// Widget route_chooser(state) {
//   return MainWrapper();
// }

// final GoRouter _router = GoRouter(routes: <GoRoute>[
//   GoRoute(
//       path: '/',
//       pageBuilder: (BuildContext context, GoRouterState state) =>
//           MaterialPage<void>(
//             name: "main",
//             key: state.pageKey,
//             child: Directionality(
//                 textDirection: TextDirection.rtl, child: route_chooser(state)),
//           )),
// ]);
