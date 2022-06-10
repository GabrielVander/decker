import 'package:logging/logging.dart' as logging;

class Logger {
  late final logging.Logger logger;

  Logger({
    logging.Logger? loggerObject,
    required String name,
  }) {
    logger = loggerObject ?? logging.Logger(name);
  }

  void debug(String message) {
    logger.fine(message);
  }

  void info(String message) {
    logger.info(message);
  }

  void error(String message) {
    logger.severe(message);
  }

  static void setup({logging.Logger? externalLogger}) {
    logging.Logger.root.level = logging.Level.ALL;
    logging.Logger.root.onRecord.listen((record) {
      // ignore: avoid_print
      print(
          '${record.level.name} - ${record.time} - ${record.loggerName}: ${record.message}');
    });
  }
}
