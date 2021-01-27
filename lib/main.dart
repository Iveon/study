import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/homePage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      // 隐藏底部虚拟状态栏
      // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

      // 用来设置顶部和底部状态栏样式
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        // Android 设备且 SDK >= M 时，顶部状态栏颜色（transparent 透明）；
        statusBarColor: Colors.transparent,
        // Android 设备且 SDK >= M 时，顶部状态栏图标的模式（light/dark）；
        statusBarIconBrightness: Brightness.light,
        // Android 设备且 SDK >= O 时，底部状态栏颜色；
        systemNavigationBarColor: Colors.pink,
        // Android 设备且 SDK >= P 时，底部状态栏与主内容分割线颜色；
        systemNavigationBarDividerColor: Colors.black,
      ));
    }

    if (Platform.isIOS) {
      //顶部状态栏的模式（light/dark）；
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ));
    }

    return MaterialApp(
      title: '好好学习',
      home: HomePage(title: 'Home Page'),
    );
  }
}
