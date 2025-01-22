import 'package:flutter/material.dart';
import 'package:flutter_extensions_pack/flutter_extensions_pack.dart';
import 'package:spotify_clone/presentation/pages/signin.page.dart';
import 'package:spotify_clone/presentation/widgets/app.button.dart';
import 'package:spotify_clone/presentation/widgets/app.custom_appbar.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 28),
          child: Column(
            children: [
              _registerText(context),
              48.spaceY,
              _fullNameField(context),
              20.spaceY,
              _emailField(context),
              20.spaceY,
              _passwordField(context),
              36.spaceY,
              AppButton(
                title: 'Create Account',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _signinText(context),
    );
  }

  Widget _registerText(BuildContext context) {
    return Text(
      'Register',
      style: context.style24W900,
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNameField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Full Name',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Email Address',
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

  Widget _signinText(BuildContext context) {
    return Padding(
      padding: 28.padY,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Do you have an account?',
            style: context.style14W500,
          ),
          TextButton(
            onPressed: () {
              context.pushReplacement(const SigninPage());
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue,
            ),
            child: Text(
              'Sign In',
              style: context.style14W700,
            ),
          ),
        ],
      ),
    );
  }
}
