import 'package:flutter/material.dart';

import 'routes.dart';
import 'theme/app_theme.dart';
import 'theme/theme_cubit.dart';
import 'pages/loading_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/patterns_bloc.dart';
import 'di/di.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ThemeCubit>(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) => MaterialApp(
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: themeMode,
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.loading,
          routes: {
            Routes.loading: (context) => const LoadingPage(),
            Routes.login: (context) => const LoginPage(),
            Routes.register: (context) => const RegisterPage(),
            Routes.home: (context) => BlocProvider(
              create: (context) => getIt<PatternsBloc>(),
              child: const HomePage(),
            ),
            Routes.profile: (context) => const ProfilePage(),
          },
        ),
      ),
    );
  }
}
