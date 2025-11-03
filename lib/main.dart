import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yemeni_jops/data/services/snackbar_services.dart';
import 'package:yemeni_jops/main.dart';
import 'package:yemeni_jops/view/SplashScreen.dart';
import 'package:yemeni_jops/view/login_page.dart';
import 'package:yemeni_jops/vm/snakBar_vm.dart';
import 'package:yemeni_jops/vm/theme_provider_vm.dart';

  void main() {
    runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: 
        (_)=> SnackbarVm(
          SnackbarServices(),
        ), ) ,
        ChangeNotifierProvider(create: (context)=> ThemeProviderVm(),)
      ],
      child:  Directionality(textDirection: TextDirection.rtl, child: MyApp()))
    );

  }


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yemeni Job Search',
      debugShowCheckedModeBanner: false,
      theme:  Provider.of<ThemeProviderVm>(context).themeData,

      
      home: const SplashScreen(),
    );
  }
}
