import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switcher_button/switcher_button.dart';

import '../models/theme_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context,ThemeModel themeNotifier,child){
      return Scaffold(
        appBar: AppBar(
          title: Text(themeNotifier.isDark ? "Dark Theme"  : "Light Theme"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SwitcherButton(
                value: themeNotifier.isDark ? false : true,
                onChange: (value){
                  themeNotifier.isDark ? themeNotifier.isDark = false : themeNotifier.isDark = true;
                },
              )

            ],
          ),
        ),
      );
    });

  }
}

