import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial()) {
    on<IncrementEvent>((event, emit) {
      emit(CounterUpdated(state.counter + 1));
    });

    on<DecrementEvent>((event, emit) {
      emit(CounterUpdated(state.counter - 1));
    });
  }
}