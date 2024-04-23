import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:technical_test/launcher_app.dart';

void main()  async {
  if (kDebugMode) {
    await dotenv.load(fileName: ".env");
  }
  runApp(const LaucherApp());
}
