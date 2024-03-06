part of 'qussass_cubit.dart';

sealed class QussassState {}

final class QussassInitial extends QussassState {}

final class QussassLoading extends QussassState {}

final class QussassSucsess extends QussassState {
  final List<QussassModel> qussas;

  QussassSucsess({required this.qussas});
}

final class QussassFailure extends QussassState {}
