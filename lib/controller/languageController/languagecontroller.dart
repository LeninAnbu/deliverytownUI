

import 'dart:developer';

import 'package:WareSmart_Logistics/constant/SharedPref.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Languagecontroller extends ChangeNotifier{
  Locale _locale =Locale('en');
Locale get locale=>_locale;

setlocate(Locale locale){
  if(locale == _locale) return;
  _locale =locale;
  savelocal(_locale);
   Get.updateLocale(_locale); 
  notifyListeners();
}
init(){
  getlocale().then((value) {
    _locale =value;

    log("_locale::"+_locale.toString());
    notifyListeners();
    Get.updateLocale(_locale);
  });
}
savelocal(Locale local)async{
  await SharedPref.saveLanguage(local);
notifyListeners();
}
 Future<Locale>  getlocale()async{
  String? Languagecode =await SharedPref.getlanguage() ??'en';
  log("language::"+Languagecode!);
  return Locale(Languagecode);

}
}