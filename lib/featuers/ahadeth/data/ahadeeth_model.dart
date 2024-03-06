class AhadeethModel {
  String? number;
  String? text;
  String? label;

  AhadeethModel({this.number, this.text, this.label});

  factory AhadeethModel.fromJson(Map<String, dynamic> json) => AhadeethModel(
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
