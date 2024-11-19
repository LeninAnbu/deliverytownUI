import 'package:WareSmart_Logistics/constant/screen.dart';
import 'package:WareSmart_Logistics/controller/initialcontroller/configcontroller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class initialpage extends StatefulWidget {
  const initialpage({super.key});

  @override
  State<initialpage> createState() => _initialpageState();
}

class _initialpageState extends State<initialpage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<configcontroller>().init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(

      body: Container(
        color: theme.primaryColor.withOpacity(.9),
        width: Screens.width(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: Screens.padingHeight(context) * 0.2,
              width: Screens.width(context) * 0.3,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                 ),
              child: Image.asset(

                "Asset/logistic.jpg",
                // fit: BoxFit.,
                height: Screens.padingHeight(context) * 0.15,
                width: Screens.width(context) * 0.3,
                // color: theme.primaryColor,
              ),
            ),
            Text(
              "WS - Logistics",
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: Colors.white, fontSize: 25),
            ),
            SizedBox(
              height: Screens.padingHeight(context) * 0.02,
            ),
            Container(
              width: Screens.width(context) * 0.4,
              height: Screens.padingHeight(context) * 0.006,
              decoration: const BoxDecoration(
                // color: Colors.white,
              ),
              child: LinearProgressIndicator(
                color: theme.primaryColor,
                backgroundColor: Colors.white,
                    
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
