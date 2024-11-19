import 'package:WareSmart_Logistics/constant/constantroutes.dart';
import 'package:WareSmart_Logistics/constant/screen.dart';
import 'package:WareSmart_Logistics/controller/tripdetailController/tripdetailscontroller.dart';
import 'package:WareSmart_Logistics/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class deliveryconfirm extends StatefulWidget {
  const deliveryconfirm({super.key});

  @override
  State<deliveryconfirm> createState() => _deliveryconfirmState();
}

class _deliveryconfirmState extends State<deliveryconfirm> {
  final signaturepadkey = GlobalKey<SfSignaturePadState>();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // context
      //                                         .read<tripdetailcontroller>()
      //                                         .init();
    });
  }
DateTime? currentBackPressTime;
  
  Future<bool> onbackpress() {
    DateTime now = DateTime.now();

    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      print("object");
      Get.offAllNamed(Constantroutes.tripdetail);
      return Future.value(true);
    } else {
      return Future.value(true);
    }
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didpop){
        if(didpop) return;
        onbackpress();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(//Delivery Confirmation
          title: Text("${S.current.DeliveryConfirhead}",style: theme.textTheme.bodyMedium!.copyWith(
                                      letterSpacing: 1,
                                      fontSize: 18,
                                      color: Colors.white
                                      )),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: Container(
          width: Screens.width(context),
      
          padding: EdgeInsets.symmetric(
              horizontal: Screens.width(context) * 0.02,
              vertical: Screens.padingHeight(context) * 0.01),
          // color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: Screens.padingHeight(context) * 0.8,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
      
                      Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: Screens.width(context),
                          
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[200]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [//Go for Navigation
                              Container(
                                width: Screens.width(context)*0.5,
                              //  constraints: BoxConstraints(maxWidth: Screens.padingHeight(context)*0.5),  
                                child: Text("${S.current.GoforNavigation}",
                                maxLines: 5,
                               
                                style: theme.textTheme.bodyMedium!.copyWith(
                                      letterSpacing: 1,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),)),
                              InkWell(
                                onTap: (){
                                  setState((){
                                     context
                                  .read<tripdetailcontroller>()
                                  . navigateToDestination(context
                                  .read<tripdetailcontroller>()
                                  .mycontroller[1].text);
                                
      
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  color: Colors.blue,
                                  ),
                                                      
                                  child:context
                                        .watch<tripdetailcontroller>()
                                        .isloadingmap ==true?Center(
                                          child: CircularProgressIndicator(
                                            color: Colors.white,
                                          ),
                                        ): Row(children: [
                                    Container(
                                      child: Icon(Icons.navigation,color: Colors.white,),
                                    ),
                                    Container(//Start
                                      child: Text("${S.current.Start}",style: theme.textTheme.bodyMedium!.copyWith(
                                        letterSpacing: 1,
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                    )
                                  ],),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Screens.padingHeight(context)*0.02,
                      ),
                      Row(
                        children: [
                          Container(
                              width: Screens.width(context) * 0.25,
                              // color: Colors.amber,
                              child: Text(
                                "${S.current.DeliveryName}",//Name
                                style: theme.textTheme.bodyMedium!.copyWith(
                                    letterSpacing: 1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                          Container(
                            child: Text(
                              " : ",
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  letterSpacing: 1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            // margin: const EdgeInsets.symmetric(
                            //     vertical: 10),
      
                            width: Screens.width(context) * 0.6,
                            decoration: const BoxDecoration(
                                // color: theme.colorScheme.secondary,
      
                                ),
                            child: TextFormField(
                              controller: context
                                  .read<tripdetailcontroller>()
                                  .mycontroller[0],
                              cursorColor: theme.primaryColor,
                              readOnly: true,
                              decoration: InputDecoration(
                                enabled: true,
                                fillColor: theme.colorScheme.secondary,
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                labelText: "${S.current.DeliveryName}",
                                labelStyle: const TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Screens.padingHeight(context) * 0.02,
                      ),
                      Row(
                        children: [
                          Container(
                              width: Screens.width(context) * 0.25,
                              // color: Colors.amber,
                              child: Text(
                                "${S.current.DeliveryAddress}",//Address
                                style: theme.textTheme.bodyMedium!.copyWith(
                                    letterSpacing: 1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                          Container(
                            child: Text(
                              " : ",
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  letterSpacing: 1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            // margin: const EdgeInsets.symmetric(
                            //     vertical: 10),
      
                            width: Screens.width(context) * 0.6,
                            decoration: const BoxDecoration(
                                // color: theme.colorScheme.secondary,
      
                                ),
                            child: TextFormField(
                              controller: context
                                  .read<tripdetailcontroller>()
                                  .mycontroller[1],
                              cursorColor: theme.primaryColor,
                              readOnly: true,
                              maxLines: 50,
                              minLines: 1,
                              decoration: InputDecoration(
                                enabled: true,
                                fillColor: theme.colorScheme.secondary,
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                labelText: "${S.current.DeliveryAddress}",
                                labelStyle: const TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Screens.padingHeight(context) * 0.01,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "${S.current.DeliveryAttachments}",//Attachments
                          style: theme.textTheme.bodyMedium!.copyWith(
                              letterSpacing: 1,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: theme.primaryColor),
                        ),
                      ),
                      SizedBox(
                        height: Screens.padingHeight(context) * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: Screens.width(context) * 0.25,
                              // color: Colors.amber,
                              child: Text(
                                "${S.current.DeliveryImage1}",//Image 1
                                style: theme.textTheme.bodyMedium!.copyWith(
                                    letterSpacing: 1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                          Container(
                            child: Text(
                              " : ",
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  letterSpacing: 1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            // margin: const EdgeInsets.symmetric(
                            //     vertical: 10),
                           
      
                            width: Screens.width(context) * 0.50,
                            decoration: const BoxDecoration(
                              //  color: Colors.amber,
                                // color: theme.colorScheme.secondary,
      
                                ),
                            child: TextFormField(
                              controller: context
                                  .read<tripdetailcontroller>()
                                  .mycontroller[3],
                              cursorColor: theme.primaryColor,
                              readOnly: true,
                              maxLines: 50,
                              minLines: 1,
                              decoration: InputDecoration(
                                enabled: true,
                                fillColor: theme.colorScheme.secondary,
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                labelText: "",
                                prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.image,
                                    size: 20,
                                    color: theme.primaryColor,
                                  ),
                                ),
                                labelStyle: const TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 25,
                                color: theme.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Screens.padingHeight(context) * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: Screens.width(context) * 0.25,
                              // color: Colors.amber,
                              child: Text(
                                "${S.current.DeliveryImage2}",
                                style: theme.textTheme.bodyMedium!.copyWith(
                                    letterSpacing: 1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                          Container(
                            child: Text(
                              " : ",
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  letterSpacing: 1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            // margin: const EdgeInsets.symmetric(
                            //     vertical: 10),
      
                            width: Screens.width(context) * 0.50,
                            decoration: const BoxDecoration(
                                // color: theme.colorScheme.secondary,
      
                                ),
                            child: TextFormField(
                              controller: context
                                  .read<tripdetailcontroller>()
                                  .mycontroller[3],
                              cursorColor: theme.primaryColor,
                              readOnly: true,
                              maxLines: 50,
                              minLines: 1,
                              decoration: InputDecoration(
                                enabled: true,
                                fillColor: theme.colorScheme.secondary,
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                labelText: "",
                                prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.image,
                                    size: 20,
                                    color: theme.primaryColor,
                                  ),
                                ),
                                labelStyle: const TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 30,
                                color: theme.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Screens.padingHeight(context) * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: Screens.width(context) * 0.25,
                              // color: Colors.amber,
                              child: Text(
                                "${S.current.DeliveryImage3}",
                                style: theme.textTheme.bodyMedium!.copyWith(
                                    letterSpacing: 1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                          Container(
                            child: Text(
                              " : ",
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  letterSpacing: 1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            // margin: const EdgeInsets.symmetric(
                            //     vertical: 10),
      
                            width: Screens.width(context) * 0.50,
                            decoration: const BoxDecoration(
                                // color: theme.colorScheme.secondary,
      
                                ),
                            child: TextFormField(
                              controller: context
                                  .read<tripdetailcontroller>()
                                  .mycontroller[3],
                              cursorColor: theme.primaryColor,
                              readOnly: true,
                              maxLines: 50,
                              minLines: 1,
                              decoration: InputDecoration(
                                enabled: true,
                                fillColor: theme.colorScheme.secondary,
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                labelText: "",
                                prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.image,
                                    size: 20,
                                    color: theme.primaryColor,
                                  ),
                                ),
                                labelStyle: const TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 30,
                                color: theme.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Screens.padingHeight(context) * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: Screens.width(context) * 0.25,
                              // color: Colors.amber,
                              child: Text(
                                "${S.current.DeliveryImage4}",
                                style: theme.textTheme.bodyMedium!.copyWith(
                                    letterSpacing: 1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                          Container(
                            child: Text(
                              " : ",
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  letterSpacing: 1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            // margin: const EdgeInsets.symmetric(
                            //     vertical: 10),
      
                            width: Screens.width(context) * 0.50,
                            decoration: const BoxDecoration(
                                // color: theme.colorScheme.secondary,
      
                                ),
                            child: TextFormField(
                              controller: context
                                  .read<tripdetailcontroller>()
                                  .mycontroller[3],
                              cursorColor: theme.primaryColor,
                              readOnly: true,
                              maxLines: 50,
                              minLines: 1,
                              decoration: InputDecoration(
                                enabled: true,
                                fillColor: theme.colorScheme.secondary,
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                labelText: "",
                                prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.image,
                                    size: 20,
                                    color: theme.primaryColor,
                                  ),
                                ),
                                labelStyle: const TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 30,
                                color: theme.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Screens.padingHeight(context) * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: Screens.width(context) * 0.25,
                              // color: Colors.amber,
                              child: Text(
                                "${S.current.DeliveryImage5}",
                                style: theme.textTheme.bodyMedium!.copyWith(
                                    letterSpacing: 1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                          Container(
                            child: Text(
                              " : ",
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  letterSpacing: 1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            // margin: const EdgeInsets.symmetric(
                            //     vertical: 10),
      
                            width: Screens.width(context) * 0.50,
                           
                            child: TextFormField(
                              controller: context
                                  .read<tripdetailcontroller>()
                                  .mycontroller[3],
                              cursorColor: theme.primaryColor,
                              readOnly: true,
                              // maxLines: 50,
                              // minLines: 1,
                              decoration: InputDecoration(
                                isDense: true,
                                fillColor: theme.colorScheme.secondary,
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical:1, horizontal: 10),
                                labelText: "",
                                prefixIcon:IconButton(
                                onPressed: () {
                                  
                                },
                                padding: EdgeInsets.all(0),
                                 icon:  Icon(
                                    Icons.image,
                                    size: 20,
                                    color: theme.primaryColor,
                                  ),
                                ),
                                labelStyle: const TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 30,
                                color: theme.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                      SizedBox(
                        height: Screens.padingHeight(context) * 0.01,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "${S.current.Deliverysettled} : 15000 ",//To be Settled
                          style: theme.textTheme.bodyMedium!.copyWith(
                              letterSpacing: 1,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: Screens.padingHeight(context) * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: Screens.width(context) * 0.25,
                              // color: Colors.amber,
                              child: Text(
                                "${S.current.Deliveryreceived}",//Amount Received
                                style: theme.textTheme.bodyMedium!.copyWith(
                                    letterSpacing: 1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                          Container(
                            child: Text(
                              " : ",
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  letterSpacing: 1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            // margin: const EdgeInsets.symmetric(
                            //     vertical: 10),
      
                            width: Screens.width(context) * 0.45,
                            decoration: const BoxDecoration(
                                // color: theme.colorScheme.secondary,
      
                                ),
                            child: TextFormField(
                              controller: context
                                  .read<tripdetailcontroller>()
                                  .mycontroller[16],
                              cursorColor: theme.primaryColor,
                              readOnly: true,
                              maxLines: 50,
                              minLines: 1,
                              decoration: InputDecoration(
                                enabled: true,
                                fillColor: theme.colorScheme.secondary,
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                labelText: "",
                                //     prefixIcon: IconButton(
                                //   onPressed: (){},
                                //   icon: Icon(Icons.image,size: 25,color: theme.primaryColor,),
                                // ),
      
                                labelStyle: const TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: theme.primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                              onPressed: () {
                                Get.toNamed(Constantroutes.paymentdetail);
                              },
                              icon: Icon(
                                Icons.more_horiz,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Screens.padingHeight(context) * 0.01,
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: Screens.padingHeight(context) * 0.18,
                          width: Screens.width(context)*0.9,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Colors.black)
                          ),
                          child: SfSignaturePad(
                            key: signaturepadkey,
                            maximumStrokeWidth: 5,
                            minimumStrokeWidth: 3,
                            strokeColor: Colors.black,
                            backgroundColor: theme.primaryColor.withOpacity(.05),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                signaturepadkey.currentState?.clear();
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.red,
                                backgroundColor: Colors.red),
                            child: Text(
                              "${S.current.DeliveryReset}",//Reset
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  fontSize: 15,
                                  letterSpacing: 1,
                                  color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Screens.padingHeight(context) * 0.01,
              ),
              SizedBox(
                width: Screens.width(context),
                height: Screens.padingHeight(context) * 0.06,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "${S.current.DeliverySave}",//Save
                      style: theme.textTheme.bodyMedium!.copyWith(
                          fontSize: 15, letterSpacing: 1, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
