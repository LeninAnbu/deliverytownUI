

import 'dart:async';
import 'dart:developer';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:WareSmart_Logistics/constant/constantroutes.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';

class tripdetailcontroller extends ChangeNotifier{
   List<TextEditingController> mycontroller =
      List.generate(20, (i) => TextEditingController());
  List<dummydata> dummylist=[];
   String isChange = "";
   String Lat = "";
   String Long = "";
   String Ip = "";
   String IpName = "";
  String currentlong='';
  String currentlat='';
   Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // log("Location permission true"+permission.toString());
      Geolocator.openLocationSettings();
    } else {
      permission = await Geolocator.checkPermission();
      log("Location permission true" + permission.toString());
      
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
        // await HelperFunctions.saveLocationSharedPref('');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        // Geolocator.openAppSettings();
      } else {
       // await locationCheck();
      }
      if (permission == LocationPermission.always || permission == LocationPermission.whileInUse) {
        // await HelperFunctions.saveLocationSharedPref('true');
      //  await locationCheck();
      return await  Geolocator.getCurrentPosition();
      }
    }
    return await  Geolocator.getCurrentPosition();
  }
static LocationSettings locationSettings = LocationSettings(
    accuracy: LocationAccuracy.best,
    distanceFilter: 10,
  );
Future<LatLng?> getLatLngFromAddress(String address) async {
  log("address::"+address.toString());
  log("Uri.encodeComponent::"+Uri.encodeComponent(address));
  try{
final apiKey = 'AIzaSyBlMin_NUEvIgzMdW3jtNIu1aUxkH7ZTAM';
  final url = Uri.parse(
      'https://maps.googleapis.com/maps/api/geocode/json?address=${Uri.encodeComponent(address)}&key=$apiKey');
  
  final response = await http.get(url).timeout(Duration(seconds: 10));
log("response::"+response.toString());
log("response.b"+response.body);
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    if (data['status'] == 'OK') {
      final location = data['results'][0]['geometry']['location'];
      return LatLng(location['lat'], location['lng']);

    } else {
       showtoastInw('Failed to get coordinates');
      throw Exception('Failed to get coordinates');
    }
  } else {
     showtoastInw('Failed to load geocode data');
    throw Exception('Failed to load geocode data');
    
  }
  }catch(e){
    log("ee:"+e.toString());
     showtoastInw(e.toString());
     notifyListeners();
  }
  
}
bool isloadingmap=false;
  void navigateToDestination(String destinationAddress) async {
    isloadingmap =true;
  try {
   
    Position currentPosition = await determinePosition();
    log("aaa"+currentPosition.latitude.toString());
    
    
    final destinationCoordinates = await getLatLngFromAddress(destinationAddress);
    
    if (destinationCoordinates != null) {
      // Open Google Maps navigation
      openGoogleMapsNavigation(
        currentPosition.latitude,
        currentPosition.longitude,
        destinationCoordinates.latitude,
        destinationCoordinates.longitude,
      );
    } else {
      print('Could not find destination location');
       isloadingmap =false;
    showtoastInw('Could not find destination location');
 notifyListeners();
    }
  } catch (e) {
    isloadingmap =false;
    log('Errornavigation: $e');
    showtoastInw(e.toString());
 notifyListeners();
  }
}
showtoastInw(String message) {
    Fluttertoast.cancel();

    notifyListeners();

    Fluttertoast.showToast(
        msg: "$message",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 0,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 14.0);
  }
  openGoogleMapsNavigation(double startLatitude, double startLongitude, double destLatitude, double destLongitude) async {
    
    String googleMapsUrl =
    "https://www.google.com/maps/dir/?api=1&origin=${startLatitude},${startLongitude}&destination=${destLatitude},${destLongitude}&travelmode=driving";
    
     if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
      isloadingmap=false;
      notifyListeners();
    } else {
      print("kkkk::Could not open Google Maps.");
      isloadingmap=false;
      notifyListeners();
      showtoastInw('Could not open Google Maps.');
      throw 'Could not open Google Maps.';
    }
    
    
  }
bool isloading =false;
  init(){
    isloadingmap=false;
  isloading =true;
  dummylist.clear();
  notifyListeners();
    Future.delayed(Duration(seconds: 3),()async{

mapdata();
    });
  }
  deliveryconfirm(int i){
    if(dummylist[i].type =='pickup'){
      mycontroller[4].text =dummylist[i].name.toString();
    mycontroller[5].text =dummylist[i].Address.toString();
      Get.toNamed(Constantroutes.pickupconfirm);
     notifyListeners(); 
    }else{
 mycontroller[0].text =dummylist[i].name.toString();
    mycontroller[1].text =dummylist[i].Address.toString();
Get.toNamed(Constantroutes.deliveryconfirm);
notifyListeners();
    }
   
  }
  signimage(dynamic image2)async{
    final image =  image2;

  }
mapdata(){
  isloading =true;
  dummylist.clear();
  
  dummylist =[
    dummydata(
      type: "delivery",
      name: 'Kitkat Software', Address: "No.70/77,1st floor, Sri Krishna Complex, Kattoor Rd, Papanaickenpalayam, Sengadu, Coimbatore, Tamil Nadu 641037"),
      dummydata(
        type: "pickup",
      name: 'Techvolt Software', Address: "7,1st Floor, Sri Sairam Tower, NSR Rd, Nesavaalar Colony, Saibaba Koil, Coimbatore, Tamil Nadu 641011"),
      dummydata(
         type: "delivery",
      name: 'M8 IT Solutions', Address: "Sakthi Estate, 1st floor No.9& 10/1 Mahatma Gandhi Road, 2, Avarampalayam, Krishnarayapuram, Coimbatore, Tamil Nadu 641006"),
   dummydata(
     type: "delivery",
      name: 'Abile Technologies', Address: "23A, Saravana Nagar, Koundampalayam, Coimbatore, Tamil Nadu 641030"),
   dummydata(
     type: "delivery",
      name: 'Nxtlogic Software', Address: "No. 415, 1, Vivekananda Rd, opp. of Zudio, Peranaidu Layout, Ram Nagar, Gandhipuram, Coimbatore, Tamil Nadu 641009"),
   dummydata(
     type: "delivery",
      name: 'ICore Software', Address: "No. 9, Ground Floor, Chennimalai Layout, Andal Nagar, Lakshmipuram, Uppilipalayam, Coimbatore, Tamil Nadu 641015"),
   dummydata(
     type: "delivery",
      name: 'Soliton Technologies', Address: "TIDEL Park Coimbatore Ltd, 3rd Floor. Aerodrome Post, 305, Coimbatore IT Park Rd, Coimbatore, Tamil Nadu 641014"),
   dummydata(
     type: "delivery",
      name: 'Mindnotix Software', Address: "No.208, Sri Vasta Siva Complex, 4th Floor, Dr Rajendra Prasad Rd, Gandhipuram, Tamil Nadu 641012"),
   dummydata(
     type: "delivery",
      name: 'Technox Technologies', Address: "1st floor, D.No. 54, Bharathi Park Rd, above Hang Out, 7th cross, Saibaba Colony, Coimbatore, Tamil Nadu 641011"),
   dummydata(
     type: "delivery",
      name: 'Ariztid Technologies', Address: "455, 2nd floor, KRS Towers, 7th St Extension, Tatabad, Gandhipuram, Coimbatore, Tamil Nadu 641012"),
   dummydata(
     type: "delivery",
      name: 'Ascent24 Technologies', Address: "Door No. 7 & 8, 1st Floor VV Complex KS Ramasamy Street, K K Pudur, Saibaba Colony, Coimbatore, Tamil Nadu 641038"),
   dummydata(
     type: "delivery",
      name: 'Viswa Technology', Address: "101 A K Nagar, Sree Narayana Guru Rd, Saibaba Kovil, Saibaba Mission, Nesavaalar Colony, Saibaba Colony, Coimbatore, Tamil Nadu 641011"),
   
  ];
  isloading =false;
  notifyListeners();

}
}
class dummydata{
  String? name;
  String? Address;
  String? type;
  dummydata({
    required this.name,
    required this.Address,
    required this.type

  });
}