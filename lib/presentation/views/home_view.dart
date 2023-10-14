import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/utils/config/size_config.dart';
import 'package:i_asim_khan/presentation/widgets/app_bar/home_app_bar.dart';
import 'package:i_asim_khan/presentation/widgets/body/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return const Scaffold(
      appBar: HomeAppBar(),
      body: HomeBody(),
    );
  }
}
