import 'package:decker/core/config/logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logging/logging.dart' as logging;
import 'package:mocktail/mocktail.dart';
import 'package:parameterized_test/parameterized_test.dart';

void main() {
  group('should call correct logger method', () {
    parameterizedTest(
      'debug',
      ParameterizedSource.values([
        [''],
        ['Some Message'],
        ['Another Message'],
      ]),
      (List<dynamic> values) {
        final String message = values[0] as String;
        final logging.Logger dummyLogger = DummyLogger();

        final Logger logger =
            Logger(name: 'Some Name', loggerObject: dummyLogger);

        logger.debug(message);

        verify(() => dummyLogger.fine(message)).called(1);
      },
    );
    parameterizedTest(
      'info',
      ParameterizedSource.values([
        [''],
        ['Some Message'],
        ['Another Message'],
      ]),
      (List<dynamic> values) {
        final String message = values[0] as String;
        final logging.Logger dummyLogger = DummyLogger();

        final Logger logger =
            Logger(name: 'Some Name', loggerObject: dummyLogger);

        logger.info(message);

        verify(() => dummyLogger.info(message)).called(1);
      },
    );
    parameterizedTest(
      'error',
      ParameterizedSource.values([
        [''],
        ['Some Message'],
        ['Another Message'],
      ]),
      (List<dynamic> values) {
        final String message = values[0] as String;
        final logging.Logger dummyLogger = DummyLogger();

        final Logger logger =
            Logger(name: 'Some Name', loggerObject: dummyLogger);

        logger.error(message);

        verify(() => dummyLogger.severe(message)).called(1);
      },
    );
  });
}

class DummyLogger extends Mock implements logging.Logger {}
