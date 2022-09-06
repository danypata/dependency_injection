import 'package:bloc/bloc.dart';
import 'package:dependency_injection/blocs/home_event.dart';
import 'package:dependency_injection/blocs/home_state.dart';
import 'package:dependency_injection/networking/models/fact.dart';
import 'package:dependency_injection/repos/simple_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FunFactRepo factRepo;

  HomeBloc(this.factRepo) : super(HomeState.nada()) {
    on<OneMorePlease>((event, emit) async {
      emit(HomeState.loading());
      Fact fact = await factRepo.oneMoreFactPlease();
      if (fact.length == -1) {
        // the most safe way to check for error eva
        emit(HomeState.error(fact.fact));
      } else {
        emit(HomeState.funFact(fact));
      }
    });
  }
}
