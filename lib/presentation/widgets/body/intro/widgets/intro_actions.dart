import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_asim_khan/core/theme/app_colors.dart';
import 'package:i_asim_khan/core/utils/app_enums.dart';
import 'package:i_asim_khan/core/utils/app_extensions.dart';
import 'package:i_asim_khan/core/widgets/custom_button.dart';
import 'package:i_asim_khan/presentation/blocs/home_bloc/home_bloc.dart';

class IntoActions extends StatelessWidget {
  const IntoActions({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [
      CustomButton(
        label: AppBarHeaders.aboutMe.getString(),
        icon: Icons.person,
        backgroundColor: context.colors.primary,
        onPressed: () {
          context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(1));
        },
        width: 160,
      ),
      const SizedBox(width: 32),
      CustomButton(
        label: AppBarHeaders.projects.getString(),
        icon: Icons.remove_red_eye,
        borderColor: context.colors.primary,
        onPressed: () {
          context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(2));
        },
        width: 160,
      ),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: actions,
    );
  }
}
