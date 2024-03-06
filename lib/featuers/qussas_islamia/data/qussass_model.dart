class QussassModel {
  String? number;
  String? text;
  String? label;

  QussassModel({this.number, this.text, this.label});

  factory QussassModel.fromJson(Map<String, dynamic> json) => QussassModel(
        number: json['number']?.toString(),
        text: json['text']?.toString(),
        label: json['label']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (number != null) 'number': number,
        if (text != null) 'text': text,
        if (label != null) 'label': label,
      };
}
