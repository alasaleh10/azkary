part of 'serah_cubit.dart';

sealed class SerahState {}

final class SerahInitial extends SerahState {}

final class SerahLoading extends SerahState {}

final class SerahSucsess extends SerahState {
  final List<SerahModelItems> items;

  SerahSucsess({required this.items});
}

final class SerahFailure extends SerahState {}
