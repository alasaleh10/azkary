import 'dart:convert';
import 'package:azkary/featuers/azkar/data/azkar_model.dart';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'azkar_state.dart';

class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit() : super(AzkarInitial());

  List<AzkarModel> azkar = [];

  Future<void> getAzkar({required String jsonFile}) async {
    emit(AzkarLoading());

    try {
      final response = await rootBundle.loadString(jsonFile);

      for (var item in json.decode(response)) {
        azkar.add(AzkarModel.fromJson(item));
      }

      emit(AzkarSucsess(azkar: azkar));
    } catch (e) {
      emit(AzkarFailure(errorMessage: e.toString()));
    }
  }
}
