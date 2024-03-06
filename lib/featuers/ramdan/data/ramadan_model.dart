class RamadanModel {
  String? number;
  String? text;
  String? label;

  RamadanModel({this.number, this.text, this.label});

  factory RamadanModel.fromJson(Map<String, dynamic> json) => RamadanModel(
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
