import 'package:flutter/material.dart';
import 'package:imc/ui/android/material-app.dart';
import 'package:imc/ui/ios/cupertino-app.dart';
import 'dart:io' show Platform;	//alias



void main() => (Platform.isAndroid)	? runApp(MyMaterialApp()) : runApp(MyCupertinoApp());

