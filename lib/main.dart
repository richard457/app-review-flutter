import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'routes.dart';
import 'package:intl/date_symbol_data_local.dart';


import 'utils/app_colors.dart';

void main() => initializeDateFormatting('pt_BR', null).then((_) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: AppColors.spennGreen,
          systemNavigationBarColor: AppColors.spennGreen,
           statusBarIconBrightness: Brightness.light,
        ),
      );
      return runApp(
        GetMaterialApp(
          title: 'Spenn Loyality',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: AppColors.warmNeutral,
            fontFamily: 'Montserrat',
          ),
          defaultTransition: Transition.fade,
          initialRoute: '/',
          getPages: routes(),
        ),
      );
    });
