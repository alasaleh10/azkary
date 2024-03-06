part of 'hajj_cubit.dart';

sealed class HajjState {}

final class HajjInitial extends HajjState {}

final class HajjLoading extends HajjState {}

final class HajjSucsess extends HajjState {
  final List<HajjModel> hajj;

  HajjSucsess({required this.hajj});
}

final class HajjFailure extends HajjState {}
