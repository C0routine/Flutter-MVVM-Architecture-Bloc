import 'package:architecture/core/utils/firebase_utils.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:architecture/app.dart';
import 'package:architecture/core/config/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseUtils.initialized();

  runApp(const App());
}
