import 'dart:convert';

import 'package:azkary/featuers/ramdan/data/ramadan_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'ramadan_state.dart';

class RamadanCubit extends Cubit<RamadanState> {
  RamadanCubit() : super(RamadanInitial());

  List<RamadanModel> items = [];

  Future<void> getRamadan({required String jsonFile}) async {
    emit(RamadanLoading());

    try {
      final response = await rootBundle.loadString(jsonFile);

      for (var item in json.decode(response)) {
        items.add(RamadanModel.fromJson(item));
      }
      emit(RamadanSucsess(items: items));
    } catch (_) {
      emit(RamadanFailure());
    }
  }
}
