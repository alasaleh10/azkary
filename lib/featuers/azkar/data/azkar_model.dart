class AzkarModel {
  num? number;
  String? hint;
  String? text;
  String? check;

  AzkarModel({this.number, this.hint, this.text, this.check});

  factory AzkarModel.fromJson(Map<String, dynamic> json) => AzkarModel(
        number: num.tryParse(json['number'].toString()),
        hint: json['hint']?.toString(),
        text: json['text']?.toString(),
        check: json['check']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (number != null) 'number': number,
        if (hint != null) 'hint': hint,
        if (text != null) 'text': text,
        if (check != null) 'check': check,
      };
}
