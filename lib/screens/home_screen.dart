import 'package:dependency_injection/blocs/home_bloc.dart';
import 'package:dependency_injection/blocs/home_event.dart';
import 'package:dependency_injection/blocs/home_state.dart';
import 'package:dependency_injection/di/injector.dart';
import 'package:dependency_injection/networking/models/fact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => getIt<HomeBloc>(),
        child: SafeArea(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.when(nada: () {
                return Center(
                  child: mainButton(context),
                );
              }, loading: () {
                return _loading;
              }, funFact: (fact) {
                return _factUI(fact, context);
              }, error: (error) {
                return _error(error);
              });
            },
          ),
        ),
      ),
    );
  }

  Center _error(String error) {
    return Center(
      child: Text(error),
    );
  }

  Widget _factUI(Fact fact, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(fact.fact),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Fun fact, the abve fact has: ${fact.length} characters',
          ),
          const SizedBox(
            height: 15,
          ),
          mainButton(context),
        ],
      ),
    );
  }

  Widget get _loading => const Center(
        child: CircularProgressIndicator(),
      );

  Widget mainButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context.read<HomeBloc>().add(HomeEvent.oneMoreFunFact());
        },
        child: const Text("Hit me baby one more time"));
  }
}
