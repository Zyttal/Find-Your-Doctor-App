// ignore_for_file: unused_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'pages/pages.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';

/*
  Assets Folder Stored in Cloudinary = Cloud Storage
  Link: https://console.cloudinary.com/console/c-07f3bd68caec3b0bfca969e15fa4ea/media_library/folders/c584d50eaa090427efff1c94bdfa79ba1f
 */

// For Debugging with DevicePreview Package

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MainApp(),
      ),
    );

// void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find Your Doctor',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,

      // for Device Preview
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}
