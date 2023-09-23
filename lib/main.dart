import 'dart:html';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() async {
// ignore: undefined_prefixed_name
  ui.platformViewRegistry.registerViewFactory(
      'hello-world-html',
      (int viewId) => IFrameElement()
        ..width = '340'
        ..height = '660'
        ..src = 'https://ujjawal.codes'
        ..style.border = 'none');

  runApp(
    // const MyApp()
    const Directionality(
      textDirection: TextDirection.ltr,
      child: SizedBox(
        width: 340,
        height: 660,
        child: HtmlElementView(viewType: 'hello-world-html'),
      ),
    ),
  );
}
