part of 'adeaa_cubit.dart';

sealed class AdeaaState {}

final class AdeaaInitial extends AdeaaState {}

final class AdeaaLoading extends AdeaaState {}

final class AdeaaSucsess extends AdeaaState {
  final List<AdeaaModel> adeaa;

  AdeaaSucsess({required this.adeaa});
}

final class AdeaaFailure extends AdeaaState {}
