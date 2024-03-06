class IslamiaaItemsModel {
  String? number;
  String? text;
  String? label;

  IslamiaaItemsModel({this.number, this.text, this.label});

  factory IslamiaaItemsModel.fromJson(Map<String, dynamic> json) {
    return IslamiaaItemsModel(
      number: json['number']?.toString(),
      text: json['text']?.toString(),
      label: json['label']?.toString(),
    );
  }

  Map<String, dynamic> toJson() => {
        if (number != null) 'number': number,
        if (text != null) 'text': text,
        if (label != null) 'label': label,
      };
}
