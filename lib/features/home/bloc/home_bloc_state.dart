part of 'home_bloc_bloc.dart';

sealed class HomeBlocState {
  int count;
  HomeBlocState({required this.count});
}

final class HomeInitialState extends HomeBlocState {
  HomeInitialState({required int count}) : super(count: count);
}

class HomeIncrementState extends HomeBlocState {
  HomeIncrementState({required super.count});
}
