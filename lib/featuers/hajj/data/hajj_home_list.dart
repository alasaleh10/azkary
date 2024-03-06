import 'package:azkary/core/constrans/json_data.dart';
import 'package:azkary/featuers/hajj/data/hajj_home_model.dart';

List<HajjHomeModel> hajjHomeList = [
  HajjHomeModel(title: 'أركـان الــحج', jsonFile: JsonData.jsonsArkanHije),
  HajjHomeModel(title: 'شــروط الــحج', jsonFile: JsonData.jsonsShrotAlhige),
  HajjHomeModel(title: 'وقــت الــحج', jsonFile: JsonData.jsonsHijTime),
  HajjHomeModel(title: 'فــضل الــحج', jsonFile: JsonData.jsonsFadelAlhaij),
  HajjHomeModel(
      title: 'مــبطلات الــحج', jsonFile: JsonData.jsonsMobtlatAlHije),
  HajjHomeModel(
      title: 'الحـــج والــعمرة', jsonFile: JsonData.jsonsHajeAndOmrah),
  HajjHomeModel(title: 'حــجة الــتمتع', jsonFile: JsonData.jsonsHijeTmtaa),
  HajjHomeModel(title: 'أدعــية مـتنوعة', jsonFile: JsonData.jsonsDoaaHajj)
];
