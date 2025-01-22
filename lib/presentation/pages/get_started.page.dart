import 'package:flutter/material.dart';
import 'package:flutter_extensions_pack/flutter_extensions_pack.dart';
import 'package:spotify_clone/common/app.assets.dart';
import 'package:spotify_clone/common/app.enums.dart';
import 'package:spotify_clone/presentation/pages/choose_mode.page.dart';
import 'package:spotify_clone/presentation/widgets/app.button.dart';
import 'package:spotify_clone/presentation/widgets/app.imageholder.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.introBG),
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
                  'Enjoy Listening To Music',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                AppButton(
                  title: 'Get Started',
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
}
