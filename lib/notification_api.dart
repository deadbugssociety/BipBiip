import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

Future<void> myBackgroundMessageHandler(Map<String, dynamic> message){
  if(message.containsKey('data')){
    final dynamic data = message['data'];
    print("Arka planda gelen data" + message["data"].toString());
    NotificationApi.showNotification();
  }
  return Future<void>.value();
}
class NotificationApi{
  //final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  static final _notifications = FlutterLocalNotificationsPlugin();
  static final onNotifications = BehaviorSubject<String?>();

  static Future _notificationDetails() async{
    return NotificationDetails(
      android: AndroidNotificationDetails(
        'channel id',
        'channel name',
        channelDescription: 'channel description',
        importance: Importance.max,

      ),
      iOS: IOSNotificationDetails(),
    );
  }

  static Future init({bool initScheduled = false}) async{
    final android = AndroidInitializationSettings('@mipmap/ic_launcher');
    final iOS= IOSInitializationSettings();
    final settings = InitializationSettings(android: android, iOS:iOS);
    await _notifications.initialize(
      settings,
      onSelectNotification: (payload) async {
        onNotifications.add(payload);
      },
    );

    /*FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      //onMessage:
      print("onMessage tetiklendi: $message");
      showNotification();

    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print("onLaunch tetik: $message");
    });*/
  }

  static Future showNotification({
    int id=0,
    String? title,
    String? body,
    String? payload,

  }) async =>
      _notifications.show(
        id,
        title,
        body,
        await _notificationDetails(),
        payload: payload,
      );
}