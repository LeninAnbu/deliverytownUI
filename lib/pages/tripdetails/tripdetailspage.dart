
import 'package:WareSmart_Logistics/constant/constantroutes.dart';
import 'package:WareSmart_Logistics/constant/screen.dart';
import 'package:WareSmart_Logistics/controller/tripdetailController/tripdetailscontroller.dart';
import 'package:WareSmart_Logistics/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class tripdetailspage extends StatefulWidget {
  const tripdetailspage({super.key});

  @override
  State<tripdetailspage> createState() => _tripdetailspageState();
}

class _tripdetailspageState extends State<tripdetailspage> {
 @override
  void initState(){
     super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        context.read<tripdetailcontroller>().init();
      
    });

  }
  DateTime? currentBackPressTime;
  
  Future<bool> onbackpress() {
    DateTime now = DateTime.now();

    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      print("object");
      Get.offAllNamed(Constantroutes.dashboard);
      return Future.value(true);
    } else {
      return Future.value(true);
    }
  }
  @override
  Widget build(BuildContext context) {
    final theme =Theme.of(context);
    return PopScope(
       canPop: false,
      onPopInvoked: (bool didpop){
        if(didpop) return;
        onbackpress();
      },
      child: Scaffold(
         backgroundColor: Colors.white,
        appBar: AppBar(//Trip Details
          title: Text("${S.current.TripDetailshead}",style: theme.textTheme.bodyMedium!.copyWith(
                                      letterSpacing: 1,
                                      fontSize: 18,
                                      color: Colors.white
                                      )),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Container(
           width: Screens.width(context),
         padding: EdgeInsets.symmetric(
          horizontal: Screens.width(context)*0.01,
          vertical: Screens.padingHeight(context)*0.02
         ),
        //  color: Colors.amber,
         child: Column(
          children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 2,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
      
                    ),
                    child: Container(
                      width: Screens.width(context)*0.3,
                      // height: Screens.padingHeight(context)*0.15,
                      padding: EdgeInsets.symmetric(
                        horizontal: Screens.width(context)*0.02,
                        vertical: Screens.padingHeight(context)*0.02
                      ),
                      decoration: BoxDecoration(
                         color: theme.colorScheme.secondary,
                        borderRadius: BorderRadius.circular(10)
                      ),
                     
                    
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${S.current.Nooftrip}",//No of Trip List
                          maxLines: 10,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            letterSpacing: 1,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                          SizedBox(
                            height: Screens.padingHeight(context)*0.02,
                          ),
                          Container(child: Text("2",style: theme.textTheme.bodyMedium!.copyWith(
                            letterSpacing: 1,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),)),
                        ],
                      ) ,
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
      
                    ),
                    child: Container(
                      width: Screens.width(context)*0.3,
                      // height: Screens.padingHeight(context)*0.15,
                      padding: EdgeInsets.symmetric(
                        horizontal: Screens.width(context)*0.02,
                        vertical: Screens.padingHeight(context)*0.02
                      ),
                      decoration: BoxDecoration(
                         color: theme.colorScheme.secondary,
                        borderRadius: BorderRadius.circular(10)
                      ),
                     
                    
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${S.current.Nooftrip}",//No of Trip List
                          maxLines: 10,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            letterSpacing: 1,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                          SizedBox(
                            height: Screens.padingHeight(context)*0.02,
                          ),
                          Container(child: Text("2",style: theme.textTheme.bodyMedium!.copyWith(
                            letterSpacing: 1,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),)),
                        ],
                      ) ,
                    ),
                  ),
                   Card(
                    elevation: 2,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
      
                    ),
                    child: Container(
                      width: Screens.width(context)*0.3,
                      // height: Screens.padingHeight(context)*0.15,
                      padding: EdgeInsets.symmetric(
                        horizontal: Screens.width(context)*0.02,
                        vertical: Screens.padingHeight(context)*0.02
                      ),
                      decoration: BoxDecoration(
                         color: theme.colorScheme.secondary,
                        borderRadius: BorderRadius.circular(10)
                      ),
                     
                    
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${S.current.Nooftrip}",//No of Trip List
                          maxLines: 10,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            letterSpacing: 1,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                          SizedBox(
                            height: Screens.padingHeight(context)*0.02,
                          ),
                          Container(child: Text("2",style: theme.textTheme.bodyMedium!.copyWith(
                            letterSpacing: 1,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),)),
                        ],
                      ) ,
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //               height: Screens.padingHeight(context)*0.01,
              //             ),
              //             Container(
              //               width: Screens.width(context),
              //               height: Screens.padingHeight(context)*0.3,
              //               color: Colors.red,
              //               alignment: Alignment.center,
              //               child: Text("Google Maps"),
              //             ),
                          SizedBox(
                            height: Screens.padingHeight(context)*0.01,
                          ),
                          Expanded(
                            child:  context.watch<tripdetailcontroller>().isloading==true&&  
              context.read<tripdetailcontroller>().dummylist.isEmpty?
              Center(
                child: CircularProgressIndicator(
                  color: theme.primaryColor,
                ),
              ):ListView.builder(
                itemCount: context.read<tripdetailcontroller>().dummylist.length,
                itemBuilder: (context,i){
                  return Container(
                     padding: EdgeInsets.symmetric(
                                          horizontal:
                                              Screens.width(context) * 0.01,
                                          vertical:
                                              Screens.padingHeight(context) *
                                                  0.002),
                                                  child: InkWell(
                                                    onTap: (){
                                                      
                                                     context.read<tripdetailcontroller>().  deliveryconfirm(i);
      
                                                    },
                                                    child: Card(
                                                      elevation: 2,
                        color: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                                            horizontal:
                                                Screens.width(context) * 0.02,
                                            vertical:
                                                Screens.padingHeight(context) *
                                                    0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            
                            children: [
                               SizedBox(
                              height: Screens.padingHeight(context)*0.01,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    // width: Screens.width(context)*0.60,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: Screens.width(context)*0.15,
                                          child: Text("${S.current.TripDetailName} ",//Name
                                          style: theme.textTheme.bodyMedium!.copyWith(
                                            letterSpacing: 1,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500
                                          ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(" : ",style: theme.textTheme.bodyMedium!.copyWith(
                                            letterSpacing: 1,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500
                                          ),),
                                        ),
                                        Container(
                                          width: Screens.width(context)*0.5,
                                          // color: Colors.amber,
                                          child: Text("${context.read<tripdetailcontroller>().dummylist[i].name}",
                                          style: theme.textTheme.bodyMedium!.copyWith(
                                              letterSpacing: 1,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.yellow.withOpacity(0.2)
                                  ),
                                          child: Text("${context.read<tripdetailcontroller>().dummylist[i].type}",
                                          style: theme.textTheme.bodyMedium!.copyWith(
                                              letterSpacing: 1,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                ],
                              )),
                              SizedBox(
                              height: Screens.padingHeight(context)*0.01,
                            ),
                             Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // color: Colors.amber,
                                    // width: Screens.width(context)*0.3,
                                    child: Text("${S.current.TripDetailAddress} : ",//Address
                                    style: theme.textTheme.bodyMedium!.copyWith(
                                      letterSpacing: 1,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500
                                    ),
                                    ),
                                  ),
                                  // Container(
                                  //   child: Text(" : ",style: theme.textTheme.bodyMedium!.copyWith(
                                  //     letterSpacing: 1,
                                  //     fontSize: 15
                                  //   ),),
                                  // ),
                                  Container(
                                    child: Text("${context.read<tripdetailcontroller>().dummylist[i].Address}",
                                    style: theme.textTheme.bodyMedium!.copyWith(
                                        letterSpacing: 1,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                 
                                ],
                              )),
                       SizedBox(
                              height: Screens.padingHeight(context)*0.01,
                            ),
                          ],),
                        ),
                                                    ),
                                                  ),
                  );
                }
                )
                            )
      
          ],
         ),
        ),
      
      ),
    );
  }
}