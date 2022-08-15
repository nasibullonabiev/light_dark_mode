import 'package:flutter/material.dart';
import 'package:light_dark_mode/models/theme_model.dart';
import 'package:light_dark_mode/pages/home_page.dart';
import 'package:provider/provider.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create : (_) => ThemeModel(),
      child: Consumer(builder: (context,ThemeModel themeModel,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Home Page",
          theme: themeModel.isDark ? ThemeData.dark() : ThemeData.light(),
          home:  HomePage(),
        );
      }));

  }
}
