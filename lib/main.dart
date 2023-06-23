import 'package:flutter/material.dart';
import 'package:moqayda/utilities/router.dart';
import 'package:moqayda/utilities/routes.dart';

void main() {
  runApp(const Mokaya());
}

class Mokaya extends StatelessWidget {
  const Mokaya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mokayda',
      //theme: appTheme(),
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SpeacialRoutes.splashScreen,
    );
  }
}


