import 'package:go_router/go_router.dart';
import 'package:test_app/Features/Get%20Started/presentation/views/get_started_view.dart';
import 'package:test_app/Features/Log%20In/pesentation/views/log_in_view.dart';
import 'package:test_app/Features/Run/presentation/views/run_view.dart';
import 'package:test_app/Features/Sign%20Up/pesentation/views/sigin_up_view.dart';
import 'package:test_app/core/utils/anyscrean.dart';

abstract class AppRouter {
  static const kRunView = "/RunView";
  static const kAnyScrean = "/AnyScrean";
  static const kSignIn = "/Signin";
  static const kLogIn = "/LogIn";
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const Getstartedview(),
      ),
      GoRoute(
        path: kAnyScrean,
        builder: (context, state) => const AnyScrean(),
      ),
      GoRoute(
        path: kSignIn,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kLogIn,
        builder: (context, state) => const LogInView(),
      ),
      GoRoute(
        path: kRunView,
        builder: (context, state) => const RunView(),
      ),
    ],
  );
}
