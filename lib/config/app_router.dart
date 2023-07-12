import 'package:go_router/go_router.dart';
import 'package:middle_east/features/login/presentation/screens/auth_id_phone_page.dart';
import 'package:middle_east/features/login/presentation/screens/auth_otp_page.dart';
import 'package:middle_east/features/login/presentation/screens/login_mode_page.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginModePage(),
        routes: [
          GoRoute(
            path: 'login_phone_id',
            builder: (context, state) => const AuthPhoneIdPage(),
            routes: [
              GoRoute(
                path: 'opt_code',
                builder: (context, state) => const AuthOtpPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
