import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/router/app_routes.dart';
import 'package:graduation_project/features/auth/presentation/screens/login_screen.dart';
import 'package:graduation_project/features/splash/presentation/screens/splash_view.dart';

import '../../features/auth/presentation/screens/register_screen.dart';

class AppRouter {
  AppRouter._();
  static final GoRouter router=GoRouter(
    initialLocation: AppRoutes.registerPath,//test
      routes:[
        GoRoute(path: AppRoutes.splashPath,name: AppRoutes.splashName,
            builder: (context,state)=>SplashView()),
        GoRoute(path: AppRoutes.loginPath,name: AppRoutes.loginName,
            builder: (context,state)=>LoginScreen()),
        GoRoute(path: AppRoutes.registerPath,name: AppRoutes.registerName,
            builder: (context,state)=>RegisterScreen()),

      ] );
}