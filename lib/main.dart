import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:spark/core/cache/cache_helper.dart';
import 'package:spark/core/cache/cache_keys_values.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/theme_manager.dart';
import 'package:spark/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    dotenv.load(),
    CacheData.casheIntialization(),
    Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform),
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRouter.getPages,
      theme: ThemeManager.lightThemeData,
      darkTheme: ThemeManager.darkThemeData,
      themeMode:
          CacheData.getData(key: CacheKeys.kLIGHTTHEME) == CacheValues.LIGHT
              ? ThemeMode.light
              : ThemeMode.dark,
    );
  }
}
