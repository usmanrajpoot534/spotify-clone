import 'package:flutter/material.dart';
import 'package:flutter_extensions_pack/flutter_extensions_pack.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/app.assets.dart';
import 'package:spotify_clone/core/config/theme/app.colors.dart';
import 'package:spotify_clone/presentation/pages/signin.page.dart';
import 'package:spotify_clone/presentation/pages/signup.page.dart';
import 'package:spotify_clone/presentation/widgets/app.button.dart';
import 'package:spotify_clone/presentation/widgets/app.custom_appbar.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomAppBar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppAssets.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppAssets.bottomPattern),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppAssets.authBG),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: 40.padX,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppAssets.appLogo),
                  50.spaceY,
                  Text(
                    'Enjoy Listening to Music',
                    style: context.style20W900,
                  ),
                  20.spaceY,
                  Text(
                    'Spotify is a properietary of Swedish audio stresming andn media services provider',
                    style: context.style12W500.copyWith(color: AppColors.grey),
                    textAlign: TextAlign.center,
                  ),
                  20.spaceY,
                  Row(
                    children: [
                      Expanded(
                        child: AppButton(
                          onPressed: () {
                            context.push(const SignupPage());
                          },
                          title: 'Register',
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            context.push(const SigninPage());
                          },
                          style: TextButton.styleFrom(
                            foregroundColor:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                            overlayColor: Colors.transparent,
                          ),
                          child: Text(
                            'Sign in',
                            style: context.style16W900,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
