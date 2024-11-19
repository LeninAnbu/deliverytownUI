
import 'package:flutter/material.dart';

class logincontroller extends ChangeNotifier{
   List<TextEditingController> mycontroller =
      List.generate(20, (i) => TextEditingController());
  List<GlobalKey<FormState>> formkey =
      List.generate(20, (i) => GlobalKey<FormState>());
  bool passwordvisible = true;
  String errorMsh = '';
   onchangedpass(){
    passwordvisible = !passwordvisible;
    notifyListeners();
  }
  clearall(){
     mycontroller[0].clear();
    mycontroller[1].clear();
    mycontroller[3].clear();
    passwordvisible = true;
    notifyListeners();
  }
}