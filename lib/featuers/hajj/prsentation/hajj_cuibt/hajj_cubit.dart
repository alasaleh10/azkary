import 'dart:convert';

import 'package:azkary/featuers/hajj/data/hajj_model.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'hajj_state.dart';

class HajjCubit extends Cubit<HajjState> {
  HajjCubit() : super(HajjInitial());
  List<HajjModel> hajj = [];

  Future<void> getHajj({required String jsonFile}) async {
    try {
      final response = await rootBundle.loadString(jsonFile);

      for (var item in json.decode(response)) {
        hajj.add(HajjModel.fromJson(item));
      }

      emit(HajjSucsess(hajj: hajj));
    } catch (_) {
      emit(HajjFailure());
    }
  }
}
