import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:testdev/routes/routes.dart';
import 'package:testdev/src/services/provider/media/media.dart';

void main() async {
  // ! App moviles unicamente.
  WidgetsFlutterBinding.ensureInitialized(); // Conceso niveles inferiores FB
  await Firebase.initializeApp(); // FB
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
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
