import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_flutter/routes/routes.dart';
import 'package:pokemon_flutter/themes/my_theme_data.theme.dart';

void main() async {
  // pour internationlisaion
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  //runApp(MyApp());
  runApp(EasyLocalization(
    supportedLocales: [Locale('en'), Locale('fr')],
    path: 'assets/translations',
    fallbackLocale: Locale('en'),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: MyThemeData(
              indicatorColor: Colors.blue,
              seedColor: const Color(0xFFFBC02D),
              //seedColor: Colors.yellow[700],
              primaryColor: const Color(0xFFFBC02D),
              iconDrawerColor: Colors.white)
          .themeData,
      routes: Routes.routes,
      //home: SignInPage(),
    );
  }
}
