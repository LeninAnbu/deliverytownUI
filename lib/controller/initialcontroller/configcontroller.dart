

import 'dart:developer';

import 'package:WareSmart_Logistics/constant/constantroutes.dart';
import 'package:WareSmart_Logistics/pages/loginpage/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class configcontroller extends ChangeNotifier{

  init(BuildContext context){
    Future.delayed(const Duration(seconds: 3),(){
      log("go to login");
      // Get.offAllNamed(Constantroutes.login);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));

    });

  }
}
