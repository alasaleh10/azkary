import 'package:azkary/core/constrans/json_data.dart';
import 'package:azkary/featuers/ahadeth/data/ahadeeth_home_model.dart';

List<AhadeethHomeModel> ahadeethHomeList = [
  AhadeethHomeModel(
      title: 'احــاديث عـامـة', jsonFile: JsonData.jsonsGeneralAhadeth),
  AhadeethHomeModel(
      title: 'احــاديث عن العــلم', jsonFile: JsonData.jsonsAlelmAhadeth),
  AhadeethHomeModel(
      title: 'احــاديث عن الــصدق', jsonFile: JsonData.jsonsSedqAhadeth),
  AhadeethHomeModel(
      title: 'احــاديث الـصداقـتة', jsonFile: JsonData.jsonsSdaqahAhadeth),
  AhadeethHomeModel(
      title: 'احــاديث عن الـماء', jsonFile: JsonData.jsonsWaterAhadeth),
  AhadeethHomeModel(
      title: 'احــاديث مـبوبة', jsonFile: JsonData.jsonsMobiaaAhadethd),
  AhadeethHomeModel(
      title: 'احــاديث عن الـنـظافـة', jsonFile: JsonData.jsonsNdafaAhadeth),
  AhadeethHomeModel(
      title: 'الأربعــين النووية', jsonFile: JsonData.jsonsArbaonNooie),
  AhadeethHomeModel(
      title: 'الــعشرة المــبشرين بالـجنة',
      jsonFile: JsonData.jsonsAlAshrahMobshreen)
];
