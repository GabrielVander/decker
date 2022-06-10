import 'package:flutter/material.dart';

import 'core/config/logger.dart';
import 'decker_app.dart';

void main() {
  _setUpApplication();
  runApp(const DeckerApp());
}

void _setUpApplication() {
  Logger.setup();
  Logger(name: 'Main').info('Application initialized');
}
