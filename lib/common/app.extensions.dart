import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension NavigationExtension on BuildContext {
  Future push(Widget nextPage) {
    return Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }

  Future pushReplacement(Widget nextPage) {
    return Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }

  Future pushAndRemoveUntil(Widget nextPage) {
    return Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => nextPage),
      (route) => false,
    );
  }

  Future pushAndPopUntilHomeRoute(String nextPage, {Object? arguments}) {
    return Navigator.pushNamedAndRemoveUntil(
      this,
      nextPage,
      (route) => route.isFirst,
      arguments: arguments,
    );
  }

  Future<void> exitApp({bool? animated}) async {
    await SystemChannels.platform
        .invokeMethod<void>('SystemNavigator.pop', animated);
  }
}
