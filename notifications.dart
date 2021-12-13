import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import "dart:io" show Platform;
import 'package:rxdart/subjects.dart';

class LocalNotifyManager {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  var initSetting;
  BehaviorSubject<ReceiveNotification> get didReceiveLocalNotificationSubject =>
                                BehaviorSubject<ReceiveNotification>();

  LocalNotifyManager.init(){
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    if(Platform.isIOS){
      requestIOSPermission();
    }
    initializePlatform();
  }
  requestIOSPermission(){
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        IOSFlutterLocalNotificationsPlugin>()
        .requestPermissions(
      alert: true,
      badge: true,
      sound: true,
    );
  }
  initializePlatform(){
    var initSettingAndroid = AndroidInitializationSettings("app_notification_icon");
    var initSettingIOS =  IOSInitializationSettings(
      requestSoundPermission: true,
      requestBadgePermission: true,
      requestAlertPermission: true,
      onDidReceiveLocalNotification: (id,title,body,payload) async{
        ReceiveNotification notification = ReceiveNotification(
            id: id, title: title, body: body, payload: payload);
        didReceiveLocalNotificationSubject.add(notification);
      }
    );
    initSetting = InitializationSettings(initSettingAndroid, initSettingIOS);
  }

  setOnNotificationReceive(Function onNotificationReceive){
    didReceiveLocalNotificationSubject.listen((notification) {
      onNotificationReceive(notification);
    });
  }

  setOnNotificationClick(Function onNotificationClick) async{
    await flutterLocalNotificationsPlugin.initialize(initSetting,
    onSelectNotification: (String payload) async{
      onNotificationClick(payload);
    });
  }

  Future<void> showNotification() async{
    var androidChannel = AndroidNotificationDetails(
      "CHANNEL_ID",
      "CHANNEL_NAME",
      'CHANNEL_DESCRIPTION',
      importance: Importance.Max,
      priority: Priority.High,
      playSound: true
    );
    var iosChannel = IOSNotificationDetails();
    var platformChannel = NotificationDetails(androidChannel,iosChannel);
    await flutterLocalNotificationsPlugin.show(
        0,
        "Test Channel",
        "Test Body",
        platformChannel,
        payload:"New Payload"
    );
  }

  Future<void> scheduleNotification() async{
    var scheduleNotificationDateTime = DateTime.parse("2021-12-13 19:55:00");
    var androidChannel = AndroidNotificationDetails(
      "CHANNEL_ID",
      "CHANNEL_NAME",
      'CHANNEL_DESCRIPTION',
      importance: Importance.Max,
      priority: Priority.High,
      playSound: true
    );
    var iosChannel = IOSNotificationDetails();
    var platformChannel = NotificationDetails(androidChannel,iosChannel);
    await flutterLocalNotificationsPlugin.schedule(
        0,
        "BipBiip First Notification",
        "Basardiiim",
        scheduleNotificationDateTime,
        platformChannel,
        payload:"New Payload"
    );
  }
}

LocalNotifyManager localNotifyManager = LocalNotifyManager.init();

class ReceiveNotification{
  final int id;
  final String title;
  final String body;
  final String payload;
  ReceiveNotification({this.id, this.title, this.body, this.payload });
}