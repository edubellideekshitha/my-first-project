import 'package:flutter_test/flutter_test.dart';

class Counter {
  int value = 0;

  void increment() => value++;
}

void main() {
  group('Counter unit tests', () {
    test('initial value is zero', () {
      final counter = Counter();
      expect(counter.value, 0);
    });

    test('increment increases value by one', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });

    test('multiple increments are counted', () {
      final counter = Counter();
      counter.increment();
      counter.increment();
      expect(counter.value, 2);
    });
  });
}
