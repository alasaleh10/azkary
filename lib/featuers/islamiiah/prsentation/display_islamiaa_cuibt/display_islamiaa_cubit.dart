import 'dart:convert';

import 'package:azkary/featuers/islamiiah/data/islamiaa_items_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'display_islamiaa_state.dart';

class DisplayIslamiaaCubit extends Cubit<DisplayIslamiaaState> {
  DisplayIslamiaaCubit() : super(DisplayIslamiaaInitial());

  List<IslamiaaItemsModel> items = [];

  Future<void> getIslamiaa({required String jsonFile}) async {
    emit(DisplayIslamiaaLoading());

    try {
      final response = await rootBundle.loadString(jsonFile);

      for (var item in json.decode(response)) {
        items.add(IslamiaaItemsModel.fromJson(item));
      }

      emit(DisplayIslamiaaSucsess(items: items));
    } catch (e) {
      emit(DisplayIslamiaaFailure());
    }
  }
}
