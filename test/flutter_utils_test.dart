import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_assist/flutter_assist.dart';

void main() {
  test('test datetime.util', () {
    final now = DateTime.now();
    expect(now.formatDate(), "Today");
    expect(now.subtract(1.days).formatDate(), "Yesterday");
    expect(now.formatDate2(), "April ${now.day}, ${now.year}");
  });
}
