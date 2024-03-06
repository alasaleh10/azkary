import 'package:azkary/core/constrans/json_data.dart';
import 'package:azkary/featuers/azkar/data/azkar_home_model.dart';

List<AzkarHomeModel> azkarItems = [
  AzkarHomeModel(title: 'أذكار الصباح', jsonFile: JsonData.jsonsMorningAzkar),
  AzkarHomeModel(title: 'أذكار المساء', jsonFile: JsonData.jsonsNightAzkar),
  AzkarHomeModel(title: 'أذكار النوم', jsonFile: JsonData.jsonsSleepAzkar),
  AzkarHomeModel(title: 'أذكار الأستيقاظ', jsonFile: JsonData.jsonsWeakupAzkar),
  AzkarHomeModel(title: 'أذكار المسجد', jsonFile: JsonData.jsonsMousqAzkar),
  AzkarHomeModel(title: 'أذكار الصلاة', jsonFile: JsonData.jsonsPrayAzkar),
  AzkarHomeModel(
      title: 'أذكار بعد الصلاة', jsonFile: JsonData.jsonsAfterprayAzka),
  AzkarHomeModel(title: 'أذكار الطعام', jsonFile: JsonData.jsonsFoodAzkar),
  AzkarHomeModel(
      title: 'أذكار اللباس الجديد', jsonFile: JsonData.jsonsClothesAzkar),
  AzkarHomeModel(title: 'الرقـية الشـرعـية', jsonFile: JsonData.jsonsAlRogiaa),
];
