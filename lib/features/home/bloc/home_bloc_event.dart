part of 'home_bloc_bloc.dart';

@immutable
abstract class HomeBlocEvent {}

class HomeIncrementEvent extends HomeBlocEvent {
  HomeIncrementEvent();
}
