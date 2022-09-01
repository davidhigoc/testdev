import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testdev/routes/routes.dart';
import 'package:testdev/src/services/provider/media/media.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // NOTIFICACIONES BÁSICAS
        ChangeNotifierProvider(
          create: (_) => Media(),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Test-Dev',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.lasRoutes,
          onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings)),
    );
  }
}

/* class InitTree extends StatelessWidget {
  const InitTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = Provider.of<Media>(context);
    media.initAppMedia(context);
    print(media.anchoSA);
    return const Home();
  }
} */
