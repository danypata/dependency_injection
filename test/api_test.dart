import 'package:dependency_injection/di/injector.dart';
import 'package:dependency_injection/networking/fact_client.dart';
import 'package:dependency_injection/networking/models/fact.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    configureDependencies();
  });

  test('we should be able to do an api call', () async {
    FactClient client = getIt<FactClient>();

    Fact fact = await client.randomFact();

    expect(fact, isNotNull);
    expect(fact.fact, isNotNull);
  });
}
