import 'package:flutter/material.dart';
import 'package:flutter_extensions_pack/flutter_extensions_pack.dart';
import 'package:spotify_clone/presentation/pages/signup.page.dart';
import 'package:spotify_clone/presentation/widgets/app.button.dart';
import 'package:spotify_clone/presentation/widgets/app.custom_appbar.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 28),
          child: Column(
            children: [
              _signinText(context),
              48.spaceY,
              _emailField(context),
              20.spaceY,
              _passwordField(context),
              36.spaceY,
              AppButton(
                title: 'Sign In',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _registerText(context),
    );
  }

  Widget _signinText(BuildContext context) {
    return Text(
      'Sign In',
      style: context.style24W900,
      textAlign: TextAlign.center,
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Enter Username / Email Address',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Password',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _registerText(BuildContext context) {
    return Padding(
      padding: 28.padY,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Not A Member?',
            style: context.style14W500,
          ),
          TextButton(
            onPressed: () {
              context.pushReplacement(const SignupPage());
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
            ),
            child: Text(
              'Register Now',
              style: context.style14W700,
            ),
          ),
        ],
      ),
    );
  }
}
