import 'package:WareSmart_Logistics/constant/constantroutes.dart';
import 'package:WareSmart_Logistics/constant/screen.dart';
import 'package:WareSmart_Logistics/controller/tripdetailController/tripdetailscontroller.dart';
import 'package:WareSmart_Logistics/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class pickuppage extends StatefulWidget {
  const pickuppage({super.key});

  @override
  State<pickuppage> createState() => _pickuppageState();
}

class _pickuppageState extends State<pickuppage> {
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
        appBar: AppBar(//Pickup Confirmation
          title: Text("${S.current.PickupConfhead}",style: theme.textTheme.bodyMedium!.copyWith(
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
          color: Colors.grey[100],
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
                              color: Colors.grey[200]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: Screens.width(context)*0.5,
                                  child: Text(
                                "${S.current.PickupGoforNav}",//Go for Navigation
                                style: theme.textTheme.bodyMedium!.copyWith(
                                    letterSpacing: 1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    context
                                        .read<tripdetailcontroller>()
                                        .navigateToDestination(context
                                            .read<tripdetailcontroller>()
                                            .mycontroller[5]
                                            .text);
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blue,
                                  ),
                                  child: context
                                        .watch<tripdetailcontroller>()
                                        .isloadingmap ==true?Center(
                                          child: CircularProgressIndicator(
                                             color: Colors.white,
                                          ),
                                        ): Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.navigation,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Container(
                                        child: Text("${S.current.PickupStart}",//Start
                                            style: theme.textTheme.bodyMedium!
                                                .copyWith(
                                                    letterSpacing: 1,
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                                "${S.current.PickupName}",//Name
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
                                  .mycontroller[4],
                              cursorColor: theme.primaryColor,
                              readOnly: true,
                              decoration: InputDecoration(
                                enabled: true,
                                fillColor: theme.colorScheme.secondary,
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                labelText: "${S.current.PickupName}",
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
                                "${S.current.PickupAddress}",//Address
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
                                  .mycontroller[5],
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
                                labelText: "${S.current.PickupAddress}",
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
                          "${S.current.PickupAttachments}",//Attachments
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
                                "${S.current.PickupImage1}",//Image 1
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
                                  .mycontroller[6],
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
                                "${S.current.PickupImage2}",
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
                                  .mycontroller[7],
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
                                "${S.current.PickupImage3}",
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
                                  .mycontroller[8],
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
                                "${S.current.PickupImage4}",
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
                                  .mycontroller[9],
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
                                "${S.current.PickupImage5}",
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
                                  .mycontroller[10],
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
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: Screens.padingHeight(context) * 0.18,
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
                              "${S.current.PickupReset}",//Reset
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
                      "${S.current.PickupSave}",//Save
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
