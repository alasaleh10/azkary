part of 'azkar_cubit.dart';

sealed class AzkarState {}

final class AzkarInitial extends AzkarState {}

final class AzkarLoading extends AzkarState {}

final class AzkarFailure extends AzkarState {
  final String errorMessage;

  AzkarFailure({required this.errorMessage});
}

final class AzkarSucsess extends AzkarState {
  final List<AzkarModel> azkar;

  AzkarSucsess({required this.azkar});
}
