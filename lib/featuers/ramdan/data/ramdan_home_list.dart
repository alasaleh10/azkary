import 'package:azkary/core/constrans/json_data.dart';
import 'package:azkary/featuers/ramdan/data/ramdan_home_model.dart';

List<RamdanHomeModel> ramdanList = [
  RamdanHomeModel(
      title: 'أدعــية رمـضـان', jsonFile: JsonData.jsonsAdeaaRamdan),
  RamdanHomeModel(
      title: 'صـحتك فـي رمــضان', jsonFile: JsonData.jsonsHelthInRamadan),
  RamdanHomeModel(
      title: 'أحـكام و فـتاوي رمــضان', jsonFile: JsonData.jsonsAhkamRamdan),
  RamdanHomeModel(
      title: 'خــتم الـقــران', jsonFile: JsonData.jsonsAdiaaKhtemQuran),
  RamdanHomeModel(
      title: 'نــصائح لـرمــضـان', jsonFile: JsonData.jsonsNsaehRamdan),
];
