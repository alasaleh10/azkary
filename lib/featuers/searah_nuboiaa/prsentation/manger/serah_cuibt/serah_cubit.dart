import 'dart:convert';

import 'package:azkary/featuers/searah_nuboiaa/data/serah_model_items.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'serah_state.dart';

class SerahCubit extends Cubit<SerahState> {
  SerahCubit() : super(SerahInitial());
  List<SerahModelItems> items = [];

  Future<void> getSerah({required String jsonFile}) async {
    emit(SerahLoading());

    try {
      final response = await rootBundle.loadString(jsonFile);
      for (var item in json.decode(response)) {
        items.add(SerahModelItems.fromJson(item));
      }
      emit(SerahSucsess(items: items));
    } catch (_) {
      emit(SerahFailure());
    }
  }
}
