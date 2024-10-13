import 'package:flutter/material.dart';

import 'package:architecture/app.dart';
import 'package:architecture/core/utils/firebase_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseUtils.initialized();

  runApp(const App());
}
