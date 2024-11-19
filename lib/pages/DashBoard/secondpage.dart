

import 'package:WareSmart_Logistics/constant/screen.dart';
import 'package:flutter/material.dart';

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
        child: Center(
          child: Text("hi"),
        ),
      ),
    );
  }
}