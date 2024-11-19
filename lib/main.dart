import 'package:WareSmart_Logistics/constant/color.dart';
import 'package:WareSmart_Logistics/constant/routes.dart';
import 'package:WareSmart_Logistics/controller/dashboardcontroller/dashboardcontroller.dart';
import 'package:WareSmart_Logistics/controller/initialcontroller/configcontroller.dart';
import 'package:WareSmart_Logistics/controller/languageController/languagecontroller.dart';
import 'package:WareSmart_Logistics/controller/logincontroller/logincontroller.dart';
import 'package:WareSmart_Logistics/controller/tripdetailController/tripdetailscontroller.dart';
import 'package:WareSmart_Logistics/pages/initialpage/initial_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';
void main() {
  runApp( MultiProvider(
     providers: [
      ChangeNotifierProvider(create: (_)=>Languagecontroller()..init())
    ],
    child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_)=>Languagecontroller()..init()),
        ChangeNotifierProvider(create: (_)=>configcontroller()),
        ChangeNotifierProvider(create: (_)=> logincontroller()),
        ChangeNotifierProvider(create: (_)=> dashboardcontroller()),
        ChangeNotifierProvider(create: (_)=> tripdetailcontroller()),
      ],
      child: Consumer<Languagecontroller>(
        builder: (context,langcon, child) {
          return GetMaterialApp(
            title: 'WareSmart - Logistics',
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              S.delegate,
             GlobalMaterialLocalizations.delegate,
         GlobalWidgetsLocalizations.delegate,
         GlobalCupertinoLocalizations.delegate
            ],
             supportedLocales: S.delegate.supportedLocales,
          locale: langcon.locale,
            theme: ThemeData(
             primaryColor:kprimarycolor,
            //  0xFFE9E3D5
                  //  primarySwatch:  colorpalette.customColor2,
                  // 0xFF6998AB
                  colorScheme: ColorScheme.fromSwatch().copyWith(
                    primary:kprimarycolor,
                    secondary:kprimarylightccolor,
                  ),
                  brightness: Brightness.light,
              useMaterial3: false,
            ),
            home:const initialpage(),
            getPages: Routes.allpages,
          );
        }
      ),
    );
  }
}


