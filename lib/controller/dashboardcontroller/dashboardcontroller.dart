

import 'package:flutter/material.dart';

class dashboardcontroller extends ChangeNotifier{
List<dummydata> dummylist=[];
bool isloading =false;
  init(){
  isloading =true;
  dummylist.clear();
  notifyListeners();
    Future.delayed(Duration(seconds: 3),()async{

mapdata();
    });
  }
mapdata(){
  isloading =true;
  dummylist.clear();
  
  dummylist =[
    dummydata(
      number: '1', delivery: "10"),
      dummydata(
      number: '2', delivery: "5"),
       dummydata(
      number: '3', delivery: "6"),
       dummydata(
      number: '4', delivery: "8"),
       dummydata(
      number: '5', delivery: "11"),
       dummydata(
      number: '6', delivery: "7"),
       dummydata(
      number: '7', delivery: "8"),
       dummydata(
      number: '2', delivery: "5"),
       dummydata(
      number: '2', delivery: "5"),
       dummydata(
      number: '2', delivery: "5"),
       dummydata(
      number: '2', delivery: "5"), dummydata(
      number: '2', delivery: "5"),
       dummydata(
      number: '2', delivery: "5"),

       dummydata(
      number: '2', delivery: "5"),
       dummydata(
      number: '2', delivery: "5"), dummydata(
      number: '2', delivery: "5"),
       dummydata(
      number: '2', delivery: "5"),
       dummydata(
      number: '2', delivery: "5"),
      
  ];
  isloading =false;
  notifyListeners();

}

}
class dummydata{
  String? number;
  String? delivery;
  dummydata({
    required this.number,
    required this.delivery

  });
}