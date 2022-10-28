import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:reddit_case/layers/data/datasources/network_datasource.dart';
import 'package:reddit_case/layers/data/repositories/network_repository_impl.dart';
import 'package:reddit_case/layers/domain/usecases/usecases.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'layers/presentation/controllers/home_controller.dart';
import 'layers/presentation/pages/HomePage/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:ResponsiveSizer(
        builder:(context, orientation, screenType) {
          return HomePage();
        }
      ),
    );
  }
}




