import 'package:bloc/bloc.dart';
import 'package:counterblock/block/bloc_event.dart';


class CounterBloc extends Bloc<CounterEvent,int>{
  CounterBloc():super(0){
    on<IncreamentCounter>((event, emit) => emit(state+1));
    on<DecreamentCounter>((event, emit) => emit(state-1));
  }

}