import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class BlocBloc extends Bloc<BlocEvent, BlocState> {
  @override
  BlocState get initialState => InitialBlocState();

  @override
  Stream<BlocState> mapEventToState(
    BlocEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
