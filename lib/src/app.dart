import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late GoRouter router;
  @override
  void initState() {
    super.initState();
    router = GoRouter(
      routes: [],
      initialLocation: '/',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: const Color(0xff1C1C1C),
          titleTextStyle: TextStyle(color: Colors.white)
        ),
        scaffoldBackgroundColor: const Color(0xff1C1C1C)
      ),
    );
  }
}
