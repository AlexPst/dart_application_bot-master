//import 'package:dart_application_bot/dart_application_bot.dart' as dart_application_bot;
//import 'package:teledart/model.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
//import 'dart:io' as io;

Future<void> main() async {
  var botToken = '6622522645:AAEzQznIXLr-gFT3pVT5LK8Zlsuthbr8Mzk';
  final username = (await Telegram(botToken).getMe()).username;
  var teledart = TeleDart(botToken, Event(username!));

  teledart.start();

 teledart.onCommand('glory').listen((message) => message.reply('For Aserot!'));
  
}