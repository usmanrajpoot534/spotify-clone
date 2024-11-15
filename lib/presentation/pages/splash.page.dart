import 'package:flutter/material.dart';
import 'package:spotify_clone/common/app.enums.dart';
import 'package:spotify_clone/common/app.vectors.dart';
import 'package:spotify_clone/presentation/widgets/app.imageholder.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppImageHolder.asset(
          AppVectors.appLogo,
          imageType: ImageType.svg,
        ),
      ),
    );
  }
}
