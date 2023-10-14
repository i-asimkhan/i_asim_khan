import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_asim_khan/core/utils/app_strings.dart';
import 'package:i_asim_khan/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:i_asim_khan/presentation/views/home_view.dart';
import 'package:i_asim_khan/core/theme/app_theme.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      title: AppStrings.developerName,
      home: BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(),
        child: const HomeView(),
      ),
    );
  }
}
