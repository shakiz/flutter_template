import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/home/home_page.dart';
import 'package:flutter_template/presentation/home/home_viewmodel.dart';
import 'package:flutter_template/routing/app_pages.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeViewModel())
      ],
      child: GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        getPages: AppPages.routes,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}