part of 'display_islamiaa_cubit.dart';

sealed class DisplayIslamiaaState {}

final class DisplayIslamiaaInitial extends DisplayIslamiaaState {}

final class DisplayIslamiaaLoading extends DisplayIslamiaaState {}

final class DisplayIslamiaaFailure extends DisplayIslamiaaState {}

final class DisplayIslamiaaSucsess extends DisplayIslamiaaState {
  final List<IslamiaaItemsModel> items;

  DisplayIslamiaaSucsess({required this.items});
}
