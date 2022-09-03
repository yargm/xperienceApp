import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xperiences/UI/widgets/splashScreen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  //inicializador firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().whenComplete(() {
    print('Se inicializó Firebase');
  });

  //obtuve notificacion en primer plano
  await FirebaseMessaging.instance.getToken();
  FirebaseMessaging.onMessage.listen(_manejadorPrimerPlano);

  //obtuve notificacion en segundo plano
  FirebaseMessaging.onBackgroundMessage(_manejadorSegundoPlano);

  //inicializar notificaciones locales
  var settingsLocal = const InitializationSettings(
      android: AndroidInitializationSettings('ic_launcher'));
  await flip.initialize(settingsLocal, onSelectNotification: (a) async {
    print("tocada " + a.toString());
  });

  runApp(MyApp());
}

Future<void> _manejadorSegundoPlano(RemoteMessage message) async {
  await Firebase.initializeApp();
  // ignore: avoid_print
  print("Notificacion en segundo plano: ${message.notification!.title}");
}

Future<void> _manejadorPrimerPlano(RemoteMessage message) async {
  print("Notificacion en primer plano: ${message.notification!.title}");
  const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    importance: Importance.max,
  );
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);
  RemoteNotification? notification = message.notification;
  AndroidNotification? android = message.notification!.android;
  if (notification != null && android != null) {
    flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
        ),
      ),
    );
  }
}

FirebaseMessaging messaging = FirebaseMessaging.instance;
FlutterLocalNotificationsPlugin flip = FlutterLocalNotificationsPlugin();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
          title: 'Xperience',
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          theme: ThemeData(
            textTheme: GoogleFonts.exoTextTheme(Theme.of(context).textTheme),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
            primarySwatch: Colors.blue,
          )),
    );
  }
}
