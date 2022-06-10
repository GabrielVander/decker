import 'package:decker/core/config/logger.dart';
import 'package:decker/decker_app.dart';
import 'package:flutter/material.dart';

void main() {
  _setUpApplication();
  runApp(const DeckerApp());
}

void _setUpApplication() {
  Logger.setup();
  Logger(name: 'Main').info('Application initialized');
}
