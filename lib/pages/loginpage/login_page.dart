
import 'package:WareSmart_Logistics/constant/constantroutes.dart';
import 'package:WareSmart_Logistics/constant/screen.dart';
import 'package:WareSmart_Logistics/controller/languageController/languagecontroller.dart';
import 'package:WareSmart_Logistics/controller/logincontroller/logincontroller.dart';
import 'package:WareSmart_Logistics/generated/l10n.dart';
import 'package:WareSmart_Logistics/model/LanguageModel/LanguageModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
 
  bool isvalid = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
     var groupvalue = context.read<Languagecontroller>() .locale.languageCode;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: Screens.width(context),
          // padding: EdgeInsets.symmetric(
          //             horizontal: Screens.width(context) * 0.03,

          //           ),
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Screens.width(context),
                height: Screens.bodyheight(context) / 2,
                color: theme.primaryColor,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: Screens.padingHeight(context) * 0.02,
                    ),
                    Container(
                      height: Screens.padingHeight(context) * 0.15,
                      child: Image.asset(
                        "Asset/logistic.jpg",
                        // color: theme.colorScheme.primary ,
                      ),
                    ),
                    SizedBox(
                      height: Screens.padingHeight(context) * 0.01,
                    ),
                    Container(
                      child: Text(
                        "WS - Logistics",
                        style: theme.textTheme.bodyMedium!.copyWith(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: theme.colorScheme.secondary),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 240.0),
                child: Container(
                  width: Screens.width(context),
                  height: Screens.bodyheight(context) / 4,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.secondary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      "${S.current.head}",//Login to your account
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300.0),
                child: Container(
                  width: Screens.width(context),
                  padding:const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                  alignment: Alignment.topCenter,
                  // height: double.maxFinite,
                  decoration:const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: Screens.padingHeight(context) * 0.04,
                        ),
                        Container(
                           height: Screens.padingHeight(context)*0.55,
                          // color: Colors.amber,
                          //  constraints: BoxConstraints(minHeight: ),
                          // height: Screens.padingHeight(context)/3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Form(
                                  key:context
                                              .read<logincontroller>().formkey[0] ,
                                  child: Column(
                                    children: [
                                      Container(
                                        // margin: const EdgeInsets.symmetric(
                                        //     vertical: 10),
                                                
                                        // width: Screens.width(context)*0.9,
                                        decoration:const BoxDecoration(
                                            // color: theme.colorScheme.secondary,
                                                
                                            ),
                                        child: TextFormField(
                                          controller: context
                                              .read<logincontroller>()
                                              .mycontroller[3],
                                          cursorColor: theme.primaryColor,
                                          decoration: InputDecoration(
                                            enabled: true,
                                            fillColor: theme.colorScheme.secondary,
                                            filled: true,
                                            contentPadding:const EdgeInsets.symmetric(
                                                vertical: 18, horizontal: 17),
                                            prefixIcon: Icon(
                                              Icons.mail,
                                              size: 25,
                                              color: theme.primaryColor,
                                            ),
                                            labelText: "${S.current.Customerid}",//Customer id
                                            labelStyle:const TextStyle(
                                                fontSize: 15, letterSpacing: 1),
                                            border: InputBorder.none,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            Screens.padingHeight(context) * 0.01,
                                      ),
                                      Container(
                                        margin:const EdgeInsets.symmetric(vertical: 10),
                                                
                                        // width: Screens.width(context)*0.9,
                                        decoration:const BoxDecoration(
                                            // color: theme.colorScheme.secondary,
                                                
                                            ),
                                        child: TextFormField(
                                          controller: context
                                              .read<logincontroller>()
                                              .mycontroller[1],
                                          cursorColor: theme.primaryColor,
                                          decoration: InputDecoration(
                                            enabled: true,
                                            fillColor: theme.colorScheme.secondary,
                                            filled: true,
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 18, horizontal: 17),
                                            prefixIcon: Icon(
                                              Icons.person,
                                              size: 25,
                                              color: theme.primaryColor,
                                            ),
                                            labelText: "${S.current.UserName}",//User Name
                                            labelStyle:const TextStyle(
                                                fontSize: 15, letterSpacing: 1),
                                            border: InputBorder.none,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            Screens.padingHeight(context) * 0.01,
                                      ),
                                      Container(
                                        // margin: EdgeInsets.symmetric(vertical: 10),
                                                
                                        // width: Screens.width(context)*0.9,
                                        decoration:const BoxDecoration(
                                            // color: theme.colorScheme.secondary,
                                                
                                            ),
                                        child: TextFormField(
                                          controller: context
                                              .read<logincontroller>()
                                              .mycontroller[2],
                                          cursorColor: theme.primaryColor,
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "*Required Password";
                                            }
                                          },
                                          obscureText: context
                                              .read<logincontroller>()
                                              .passwordvisible,
                                          decoration: InputDecoration(
                                            enabled: true,
                                            fillColor: theme.colorScheme.secondary,
                                            filled: true,
                                            contentPadding:const EdgeInsets.symmetric(
                                                vertical: 18, horizontal: 17),
                                            prefixIcon: Icon(
                                              Icons.lock,
                                              color: theme.primaryColor,
                                              size: 25,
                                            ),
                                            labelText: "${S.current.Password}",//Password
                                            labelStyle: TextStyle(
                                                fontSize: 15, letterSpacing: 1),
                                            suffixIcon: IconButton(
                                              onPressed: () {
                                                context
                                                    .read<logincontroller>()
                                                    .onchangedpass();
                                              },
                                              icon: context
                                                      .watch<logincontroller>()
                                                      .passwordvisible
                                                  ? Icon(Icons.visibility_off,
                                                      color: theme.primaryColor)
                                                  : Icon(Icons.visibility,
                                                      color: theme.primaryColor),
                                            ),
                                            border: InputBorder.none,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            Screens.padingHeight(context) * 0.001,
                                      ),
                                      Container(
                                       
                                        child: Row(
                                          // mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Checkbox(
                                                value: isvalid,
                                                // overlayColor: Colors.black,
                                                  
                                                activeColor: theme.primaryColor,
                                                checkColor: Colors.white,
                                                onChanged: (val) {
                                                  setState(() {
                                                    isvalid = !isvalid;
                                                  });
                                                }),
                                            Container(
                                              // width: Screens.width(context)*0.3,
                                               constraints: BoxConstraints(maxWidth: Screens.padingHeight(context)*0.2),  
                                              child: Text(
                                                "${S.current.agree1} ",//I agree the 
                                                style: theme.textTheme.bodyText1!.copyWith(letterSpacing: 1),
                                              ),
                                            ),
                                            Flexible(
                                              child: Container(
                                               
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color:
                                                                  theme.primaryColor))),
                                                  child: Text(
                                                    maxLines: 2,
                                                    "${S.current.agree2}",//Terms & Conditions
                                                    style: theme.textTheme.bodyText1!
                                                        .copyWith(
                                                      color: theme.primaryColor,
                                                      letterSpacing: 1,
                                                      
                                                      // fontWeight:
                                                      //     FontWeight.bold,
                                                    ),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            Screens.padingHeight(context) * 0.001,
                                      ),
                                      SizedBox(
                                        width: Screens.width(context),
                                        height:
                                            Screens.padingHeight(context) * 0.06,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Get.offAllNamed(Constantroutes.dashboard);
                                            },
                                            style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(15))),
                                            child: Text(
                                              "${S.current.login}",//Login
                                              style: theme.textTheme.bodyMedium!
                                                  .copyWith(
                                                      fontSize: 15,
                                                      letterSpacing: 1,
                                                      color: Colors.white),
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // width: Screens.width(context)*0.9,
                                // color: Colors.amber,
                                padding: EdgeInsets.only(
                                    bottom: Screens.padingHeight(context) * 0.00),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: (){
                                         showDialog(
                  context: context, 
                  builder: (context){
                    return AlertDialog(
                      insetPadding: EdgeInsets.all(10),
                      contentPadding:EdgeInsets.all(0) ,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      alignment: Alignment.bottomLeft,
                      content: Container(
                        // height: 300,
                        // color: Colors.amber,
                        width: Screens.width(context)*0.1,
                         constraints: BoxConstraints(maxHeight: Screens.padingHeight(context)*0.3),  
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                // ise:true,
                                itemCount: LanguageModel.length,
                                itemBuilder: (context,i){
                                  var item =LanguageModel[i];
                                  return RadioListTile(
                                    value: item.languagecode, 
                                    activeColor:theme.primaryColor,
                                    groupValue: groupvalue, 
                                    title: Text(item.language!),
                                    subtitle: Text(item.sublanguage!),
                                    onChanged: (val){
                                      groupvalue =val.toString();
                                   context.read<Languagecontroller>().setlocate(Locale(item.languagecode!));
                              Navigator.pop(context);
                                    }
                                    );
                              
                                }
                                ),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                  );
                                      },
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        width: Screens.width(context)*0.15,
                                        child:Icon(Icons.language,color:theme.primaryColor,
                                        size: 25,)
                                      ),
                                    ),
                                    Container(
                                      // alignment: Alignment.centerRight,
                                      child: Row(
                                        //  mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("App Version 10.0",
                                              style: theme.textTheme.bodyText1!
                                                  .copyWith(letterSpacing: 1)),
                                       Text(" | ",
                                        style: theme.textTheme.bodyText1!
                                            .copyWith()),
                                    Text("Api Version 1.0.0",
                                        style:
                                            theme.textTheme.bodyText1!.copyWith(letterSpacing: 1))
                              
                                        ],
                                      ),
                                    ),
                                        ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              // Container(
              //   child: Text("Login",style: theme.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold,
              //                                       fontSize: 30),),
              // ),
              // SizedBox(
              //   height: Screens.padingHeight(context)*0.02,
              // ),
              // Container(
              //   child: TextFormField(
              //     decoration: InputDecoration(
              //       labelText: "User Name",
              //       enabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10)
              //       ),
              //       focusedBorder:OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10)
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: Screens.padingHeight(context)*0.02,
              // ),
              //  Container(
              //   child: TextFormField(
              //      decoration: InputDecoration(
              //       labelText: "User Name",
              //       enabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10)
              //       ),
              //       focusedBorder:OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10)
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: Screens.padingHeight(context)*0.02,
              // ),
              //  SizedBox(
              //   width: Screens.width(context),
              //   height: Screens.padingHeight(context)*0.07,
              //   child: ElevatedButton(
              //     onPressed: (){},
              //     child:const Text("Login")),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
