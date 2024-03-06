import 'dart:convert';

import 'package:azkary/featuers/adeaa/data/adeaa_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'adeaa_state.dart';

class AdeaaCubit extends Cubit<AdeaaState> {
  AdeaaCubit() : super(AdeaaInitial());

  List<AdeaaModel> adeaa = [];

  Future<void> getAdeaa({required String jsonFile}) async {
    emit(AdeaaLoading());
    try {
      final response = await rootBundle.loadString(jsonFile);

      for (var item in json.decode(response)) {
        adeaa.add(AdeaaModel.fromJson(item));
      }
      emit(AdeaaSucsess(adeaa: adeaa));
    } catch (_) {
      emit(AdeaaFailure());
    }
  }
}
