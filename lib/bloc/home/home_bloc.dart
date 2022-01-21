// import 'dart:async';
// import 'package:bloc/bloc.dart';
// import 'package:dio/dio.dart';
// import 'package:equatable/equatable.dart';
// import 'package:meta/meta.dart';

// part 'home_event.dart';

// part 'home_state.dart';

// class HomeBloc extends Bloc<HomeEvent, HomeState> {
//   HomeBloc(HomeState initialState) : super(initialState);
//   var response;
//   int count = 0;
//   @override
//   HomeState get initialState => InitialHomeState();

//   @override
//   Stream<HomeState> mapEventToState(HomeEvent event) async* {
//     if (event is IncrementEvent) {
//       yield* _mapIncrement(event);
//     } else if (event is StopEvent) {
//       yield StopState();
//     } else if (event is CallApiEvent) {
//       yield* _mapCallApi(event);
//     }
//   }

//   Stream<HomeState> _mapIncrement(IncrementEvent event) async* {
//     yield LoadingState();
//     count++;
//     yield IncrementState();
//   }

//   Stream<HomeState> _mapCallApi(CallApiEvent event) async* {
//     yield LoadingState();
//     try {
//       print(res.data);
//       this.response = res.data;
//       print('call success');
// //      print(response.data);
//       yield CallApiState(response);
//     } catch (e) {
//       print('error');
//       print(e);
//     }
//   }
// }
