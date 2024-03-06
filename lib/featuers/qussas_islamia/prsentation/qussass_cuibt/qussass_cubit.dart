import 'dart:convert';

import 'package:azkary/featuers/qussas_islamia/data/qussass_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'qussass_state.dart';

class QussassCubit extends Cubit<QussassState> {
  QussassCubit() : super(QussassInitial());

  List<QussassModel> qussas = [];

  Future<void> getQussass({required String jsonFile}) async {
    try {
      emit(QussassLoading());

      final response = await rootBundle.loadString(jsonFile);

      for (var item in json.decode(response)) {
        qussas.add(QussassModel.fromJson(item));
      }
      emit(QussassSucsess(qussas: qussas));
    } catch (e) {
      emit(QussassFailure());
    }
  }
}
