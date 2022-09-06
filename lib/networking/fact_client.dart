import 'package:dependency_injection/networking/config.dart';
import 'package:dependency_injection/networking/models/fact.dart';
import 'package:dependency_injection/networking/rest_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class FactClient {
  Future<Fact> randomFact();
}

@Injectable(as: FactClient)
class CatFactClient extends FactClient {
  final Dio dio;
  final IConfig config;
  final RestClient client;

  @override
  Future<Fact> randomFact() {
    return client.randomFact();
  }

  CatFactClient({
    required this.dio,
    required this.config,
  }) : client = RestClient(dio, baseUrl: config.baseUrl);
}
