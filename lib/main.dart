import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_orange/core/constants/styles.dart';
import 'package:graduation_orange/core/db/cach_helper/cach_helper.dart';
import 'package:graduation_orange/core/db/local_db/local_db.dart';
import 'package:graduation_orange/core/network/remote/dio_helper.dart';
import 'package:graduation_orange/features/auth/presentation/view/screens/otp_password.dart';
import 'package:graduation_orange/features/home/logic/home_cubit/home_cubit.dart';
import 'package:graduation_orange/features/home/presentation/screens/modules/home_screen.dart';
import 'package:graduation_orange/features/home/presentation/screens/notifications_screen.dart';
import 'package:graduation_orange/features/home/presentation/screens/product_detials.dart';
import 'package:graduation_orange/features/intro/splash_screen.dart';
import 'package:graduation_orange/test.dart';

import 'features/home/presentation/screens/home_page.dart';
import 'features/on_boarding/presentation/view/screens/on_boarding_screen.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
await CacheHelper.init();
await SQLHelper.initDb();
  DioHelper.init();
  runApp(ScreenUtilInit(
    designSize: Size(375, 812),
    minTextAdapt: true,
    builder: (context, _) {
      return BlocProvider(
        create: (context) => HomeCubit()..
        getProducts()..getUserData(),
        child: StoreApp(),
      );
    },
  ));
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SplashScreen()

    );
  }
}
