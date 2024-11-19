

import 'package:WareSmart_Logistics/constant/constantroutes.dart';
import 'package:WareSmart_Logistics/pages/DashBoard/Dashboardpage.dart';
import 'package:WareSmart_Logistics/pages/deliveryconfirmation/deliveryconfirmation.dart';
import 'package:WareSmart_Logistics/pages/initialpage/initial_page.dart';
import 'package:WareSmart_Logistics/pages/loginpage/login_page.dart';
import 'package:WareSmart_Logistics/pages/paymentdetail/paymentdetail.dart';
import 'package:WareSmart_Logistics/pages/pickuppage/picckuppage.dart';
import 'package:WareSmart_Logistics/pages/tripdetails/tripdetailspage.dart';

import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class Routes{
  static List<GetPage> allpages=[
    GetPage
    (name: Constantroutes.initalpage, 
    page: ()=>const initialpage(),
    transition: Transition.fade,
    transitionDuration:const Duration(seconds: 1)),
     GetPage
    (name: Constantroutes.login, 
    page: ()=>const loginpage(),
    transition: Transition.fade,
    transitionDuration:const Duration(seconds: 1)),
    GetPage
    (name: Constantroutes.dashboard, 
    page: ()=>const Dashboard(),
    transition: Transition.fade,
    transitionDuration:const Duration(seconds: 1)),
    GetPage
    (name: Constantroutes.tripdetail, 
    page: ()=>const tripdetailspage(),
    transition: Transition.fade,
    transitionDuration:const Duration(seconds: 1)),
     GetPage
    (name: Constantroutes.deliveryconfirm, 
    page: ()=>const deliveryconfirm(),
    transition: Transition.fade,
    transitionDuration:const Duration(seconds: 1)),
      GetPage
    (name: Constantroutes.pickupconfirm, 
    page: ()=>const pickuppage(),
    transition: Transition.fade,
    transitionDuration:const Duration(seconds: 1)),
    GetPage
    (name: Constantroutes.paymentdetail, 
    page: ()=>const paymentdetail(),
    transition: Transition.fade,
    transitionDuration:const Duration(seconds: 1)),
    
    

  ] ;
}