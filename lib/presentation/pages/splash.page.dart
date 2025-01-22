// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_extensions_pack/flutter_extensions_pack.dart';
import 'package:spotify_clone/common/app.assets.dart';
import 'package:spotify_clone/common/app.enums.dart';
import 'package:spotify_clone/presentation/pages/get_started.page.dart';
import 'package:spotify_clone/presentation/widgets/app.imageholder.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppImageHolder.asset(
          AppAssets.appLogo,
          imageType: ImageType.svg,
        ),
      ),
    );
  }

  Future<void> _redirect() async {
    await Future.delayed(const Duration(seconds: 3));
    context.pushReplacement(const GetStartedPage());
  }
}
