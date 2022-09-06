import 'package:dependency_injection/networking/models/fact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState.nada() = Nada;

  factory HomeState.loading() = Loading;

  factory HomeState.funFact(Fact fact) = FunFact;

  factory HomeState.error(String error) = Error;
}
