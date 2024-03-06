import 'package:azkary/core/constrans/json_data.dart';
import 'package:azkary/featuers/qussas_islamia/data/qussas_home_model.dart';

List<QussassHomeModel> qussasList = [
  QussassHomeModel(
      title: 'قــصص الأنــبياء', jsonFile: JsonData.jsonsAnbiaQass),
  QussassHomeModel(title: 'قــصص الـقران', jsonFile: JsonData.jsonsQuranQass),
  QussassHomeModel(
      title: 'قــصص الــصحابة', jsonFile: JsonData.jsonsShabahQass),
  QussassHomeModel(
      title: 'قــصص الـصحابـيات', jsonFile: JsonData.jsonsShabiatQass),
  QussassHomeModel(title: 'قــصص الحـيوان', jsonFile: JsonData.jsonsAnimalQass),
  QussassHomeModel(
      title: 'معـجزات الأنــبياء', jsonFile: JsonData.jsonsMoajzatAnbia)
];
