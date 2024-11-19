
import 'package:WareSmart_Logistics/constant/constantroutes.dart';
import 'package:WareSmart_Logistics/constant/screen.dart';
import 'package:WareSmart_Logistics/controller/dashboardcontroller/dashboardcontroller.dart';
import 'package:WareSmart_Logistics/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    final theme =Theme.of(context);
    return  Padding(
             padding: const EdgeInsets.only(top: 80.0),
              child: Container(
                  width: Screens.width(context),
                 padding: EdgeInsets.symmetric(
                  horizontal: Screens.width(context)*0.03,
                  vertical: Screens.padingHeight(context)*0.02
                 ),
                 decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.85),
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(20) ,
                  topRight: Radius.circular(20)
                  )
                 ),
                  child: Column(
                    children: [
                      // Container(
                      //   child: SpinKitFadingCircle(
                      //     color: theme.primaryColor,
                          
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: Screens.padingHeight(context)*0.05,
                      // ),
                       Container(
                           
                            width: Screens.width(context),
                            child:  Text("${S.current.Nooftrip} : 2",//No of Trip List
                                  maxLines: 10,
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    letterSpacing: 1,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                  ),),
                            padding: EdgeInsets.symmetric(
                                horizontal: Screens.width(context)*0.02,
                                vertical: Screens.padingHeight(context)*0.02
                              ),
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                               
                              ),
                          ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                         
                      //     Card(
                      //       elevation: 2,
                      //       shape:RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(10)
                
                      //       ),
                      //       child: Container(
                      //         width: Screens.width(context)*0.28,
                      //         // height: Screens.padingHeight(context)*0.15,
                      //         padding: EdgeInsets.symmetric(
                      //           horizontal: Screens.width(context)*0.02,
                      //           vertical: Screens.padingHeight(context)*0.02
                      //         ),
                      //         decoration: BoxDecoration(
                      //            color: Colors.white,
                      //           borderRadius: BorderRadius.circular(10),
                      //           border: Border.all(
                      //             color: Colors.black26
                      //           )
                      //         ),
                             
                            
                      //         child:Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //               Container(child: Text("2",style: theme.textTheme.bodyMedium!.copyWith(
                      //               letterSpacing: 1,
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.w500
                      //             ),)),
                      //             SizedBox(
                      //               height: Screens.padingHeight(context)*0.02,
                      //             ),
                      //             Text("${S.current.Nooftrip}",//No of Trip List
                      //             maxLines: 10,
                      //             style: theme.textTheme.bodyMedium!.copyWith(
                      //               letterSpacing: 1,
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.w500
                      //             ),
                      //             ),
                                  
                                
                      //           ],
                      //         ) ,
                      //       ),
                      //     ),
                      //     Card(
                      //       elevation: 2,
                      //       shape:RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(10)
                
                      //       ),
                      //       child: Container(
                      //         width: Screens.width(context)*0.28,
                      //         // height: Screens.padingHeight(context)*0.15,
                      //         padding: EdgeInsets.symmetric(
                      //           horizontal: Screens.width(context)*0.02,
                      //           vertical: Screens.padingHeight(context)*0.02
                      //         ),
                      //         decoration: BoxDecoration(
                      //            color: Colors.white,
                      //           borderRadius: BorderRadius.circular(10),
                      //            border: Border.all(
                      //             color: Colors.black26
                      //           )
                      //         ),
                             
                            
                      //         child:Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                                  
                      //             Container(child: Text("2",style: theme.textTheme.bodyMedium!.copyWith(
                      //               letterSpacing: 1,
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.w500
                      //             ),)),
                      //              SizedBox(
                      //               height: Screens.padingHeight(context)*0.02,
                      //             ),
                      //             Text("${S.current.Nooftrip}",//No of Trip List
                      //             maxLines: 10,
                      //             style: theme.textTheme.bodyMedium!.copyWith(
                      //               letterSpacing: 1,
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.w500
                      //             ),
                      //             ),
                                 
                      //           ],
                      //         ) ,
                      //       ),
                      //     ),
                      //      Card(
                      //       elevation: 2,
                      //       shape:RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(10)
                
                      //       ),
                      //       child: Container(
                      //         width: Screens.width(context)*0.28,
                      //         // height: Screens.padingHeight(context)*0.15,
                      //         padding: EdgeInsets.symmetric(
                      //           horizontal: Screens.width(context)*0.02,
                      //           vertical: Screens.padingHeight(context)*0.02
                      //         ),
                      //         decoration: BoxDecoration(
                      //           color: Colors.white,
                      //           borderRadius: BorderRadius.circular(10),
                      //            border: Border.all(
                      //             color: Colors.black26
                      //           )
                      //         ),
                             
                            
                      //         child:Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                                  
                      //             Container(child: Text("2",style: theme.textTheme.bodyMedium!.copyWith(
                      //               letterSpacing: 1,
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.w500
                      //             ),)),
                      //             SizedBox(
                      //               height: Screens.padingHeight(context)*0.02,
                      //             ),
                      //             Text("${S.current.Nooftrip}",//No of Trip List
                      //             maxLines: 10,
                      //             style: theme.textTheme.bodyMedium!.copyWith(
                      //               letterSpacing: 1,
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.w500
                      //             ),
                      //             ),
                                  
                      //           ],
                      //         ) ,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                     
                      //  SizedBox(
                      //               height: Screens.padingHeight(context)*0.01,
                      //             ),
                      // Container(
                      //   padding: EdgeInsets.symmetric(horizontal: 10),
                      //   alignment: Alignment.centerLeft,
                      //   child: Divider(
                      //     color: Colors.black,
                      //   )
                      //   // Text("Trips List:",
                      //   // style: theme.textTheme.bodyMedium!.copyWith(
                      //   //             letterSpacing: 1,
                      //   //             fontSize: 18,
                      //   //             fontWeight: FontWeight.w500
                      //   //           ),
                      //   // ),
                      // ),
                      SizedBox(
                                    height: Screens.padingHeight(context)*0.01,
                                  ),
                      
                      Expanded(
                        child: 
                      context.watch<dashboardcontroller>().isloading==true&&  
                      context.read<dashboardcontroller>().dummylist.isEmpty?
                      Center(
                        child: CircularProgressIndicator(
                          color: theme.primaryColor,
                        ),
                      ):
                
                      ListView.builder(
                        itemCount: context.read<dashboardcontroller>().dummylist.length,
                        itemBuilder: (context,i){
                          return Container(
                            padding: EdgeInsets.symmetric(
                                                  // horizontal:
                                                  //     Screens.width(context) * 0.01,
                                                  vertical:
                                                      Screens.padingHeight(context) *
                                                          0.002),
                                                         
                            // color: Colors.amber,
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  Get.toNamed(Constantroutes.tripdetail);
                                });
                              },
                              child: Card(
                                elevation: 2,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        Screens.width(context) * 0.01,
                                                    vertical:
                                                        Screens.padingHeight(context) *
                                                            0.01),
                
                                                             decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),
                                                            // border: Border.all(
                                                            //   color: Colors.black26
                                                            // ),
                                                            // color: theme.colorScheme.secondary.withOpacity(.5)
                                                          ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    
                                    children: [
                                       SizedBox(
                                      height: Screens.padingHeight(context)*0.01,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: Screens.width(context)*0.2,
                                        padding: EdgeInsets.all(10),
                                         decoration: BoxDecoration(
                                          // color: Colors.amber
                                          shape: BoxShape.circle,
                                          color: theme.primaryColor.withOpacity(.1)
                                        
                                         ),
                                         child:Image.asset("Asset/express-delivery.png",
                                         width:Screens. width(context)*0.05,
                                         height:Screens. padingHeight(context) *0.07,
                                         
                                         )
                                        ),
                                        SizedBox(
                                          width: Screens.width(context)*0.01,
                                        ),
                                        Container(
                                      child: Column(
                                        children: [
 Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            width: Screens.width(context)*0.3,
                                            child: Text("${S.current.TripNumber}",//Trip Number
                                            style: theme.textTheme.bodyMedium!.copyWith(
                                              letterSpacing: 1,
                                              fontSize: 15
                                            ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(" : ",style: theme.textTheme.bodyMedium!.copyWith(
                                              letterSpacing: 1,
                                              fontSize: 15
                                            ),),
                                          ),
                                          Text("${context.read<dashboardcontroller>().dummylist[i].number}",
                                          style: theme.textTheme.bodyMedium!.copyWith(
                                              letterSpacing: 1,
                                              fontSize: 15
                                            ),
                                          ),
                                        ],
                                      )),
                                     
                                      SizedBox(
                                      height: Screens.padingHeight(context)*0.01,
                                    ),
                                     Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            width: Screens.width(context)*0.3,
                                            child: Text("${S.current.NoofDeliveries}",//No of Deliveries
                                            style: theme.textTheme.bodyMedium!.copyWith(
                                              letterSpacing: 1,
                                              fontSize: 15
                                            ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(" : ",style: theme.textTheme.bodyMedium!.copyWith(
                                              letterSpacing: 1,
                                              fontSize: 15
                                            ),),
                                          ),
                                          Text("${context.read<dashboardcontroller>().dummylist[i].delivery}",
                                          style: theme.textTheme.bodyMedium!.copyWith(
                                              letterSpacing: 1,
                                              fontSize: 15
                                            ),
                                          ),
                                         
                                        ],
                                      )),
                                        ],
                                      ),
                                    ),
                                   
                              
                                      ],
                                    ),
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
            );
       
  }
}