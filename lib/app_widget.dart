import 'package:flutter/material.dart';
import 'package:mkt/app_controller.dart';
import 'package:mkt/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.purple,
                brightness: AppController.instance.isDarkTheme == true
                    ? Brightness.dark
                    : Brightness.light),
            home: HomePage());
      },
    );
  }
}
