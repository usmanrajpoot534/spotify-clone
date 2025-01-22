import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_extensions_pack/flutter_extensions_pack.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/app.assets.dart';
import 'package:spotify_clone/common/app.enums.dart';
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
                    _modeSelector(ThemeMode.light),
                    _modeSelector(ThemeMode.dark),
                  ],
                ),
                20.spaceY,
                AppButton(
                  title: 'Continue',
                  onPressed: () {
                    context.pushReplacement(
                      const ChooseModePage(),
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

  Widget _modeSelector(ThemeMode mode) {
    final isLight = mode == ThemeMode.light;
    return Column(
      children: [
        ClipOval(
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
                isLight ? AppAssets.moon : AppAssets.sun,
                fit: BoxFit.none,
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

enum ThemeMode { light, dark }
