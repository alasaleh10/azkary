part of 'ramadan_cubit.dart';

sealed class RamadanState {}

final class RamadanInitial extends RamadanState {}

final class RamadanLoading extends RamadanState {}

final class RamadanSucsess extends RamadanState {
  final List<RamadanModel> items;

  RamadanSucsess({required this.items});
}

final class RamadanFailure extends RamadanState {}
