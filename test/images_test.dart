import 'dart:io';

import 'package:decker/resources/resources.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.paladinsLogo).existsSync(), true);
  });
}
