import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_extensions_pack/flutter_extensions_pack.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/app.assets.dart';
import 'package:spotify_clone/common/app.enums.dart';
import 'package:spotify_clone/presentation/blocs/theme_cubit.dart';
import 'package:spotify_clone/presentation/pages/signup_or_signin.page.dart';
import 'package:spotify_clone/presentation/widgets/app.button.dart';
import 'package:spotify_clone/presentation/widgets/app.imageholder.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.chooseModeBG),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 64, 24, 64),
            child: Column(
              children: [
                AppImageHolder.asset(
                  AppAssets.appLogo,
                  imageType: ImageType.svg,
                ),
                const Spacer(),
                const Text(
                  'Choose Mode',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                20.spaceY,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _modeSelector(context, ThemeMode.light),
                    _modeSelector(context, ThemeMode.dark),
                  ],
                ),
                20.spaceY,
                AppButton(
                  title: 'Continue',
                  onPressed: () {
                    context.push(
                      const SignupOrSigninPage(),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _modeSelector(BuildContext context, ThemeMode mode) {
    final isLight = mode == ThemeMode.light;
    return Column(
      children: [
        InkWell(
          onTap: () {
            context.read<ThemeCubit>().updateTheme(mode);
          },
          child: ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: const Color(0xff30393c).withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  isLight ? AppAssets.sun : AppAssets.moon,
                  fit: BoxFit.none,
                ),
              ),
            ),
          ),
        ),
        12.spaceY,
        Text(
          isLight ? 'Light' : 'Dark',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
