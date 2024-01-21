import 'package:blocpractice/bloc/weather_event.dart';
import 'package:blocpractice/bloc/weather_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(InitialState()) {
    on<InitialEvent>((event, emit) {
      initialEvent(event, emit);
    });
    on<LoadingEvent>((event, emit) => loadingState(event, emit));
  }

  void initialEvent(InitialEvent event, Emitter<HomeState> emit) {
    emit(LoadingState());
  }

  loadingState(LoadingEvent event, Emitter<HomeState> emit)async {


   await Future.delayed(Duration(seconds: 3),(){


      emit(ResponseState());


    });


  }
}
