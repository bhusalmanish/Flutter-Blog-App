import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journo_blog/core/constansts/my_string.dart';
import 'package:journo_blog/core/themes/my_themes.dart';
import 'package:journo_blog/data/repositories/auth_repo.dart';
import 'package:journo_blog/data/repositories/repository.dart';
import 'package:journo_blog/data/repositories/tag_repo.dart';

import 'presentation/routes/router_import.dart';

void main() {
  runApp(RepositoryProvider(
    create: (context) => Repository(authRepo: AuthRepo(), tagRepo: TagRepo()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: MyString.appName,
            theme: MyThemes.light,
            darkTheme: MyThemes.dark,
            routerConfig: _appRouter.config(),
            // home: const MyHomePage(title: MyString.appName),
          );
        });
  }
}
