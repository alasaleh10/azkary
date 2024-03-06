class SerahModelItems {
  String? number;
  String? text;
  String? label;

  SerahModelItems({this.number, this.text, this.label});

  factory SerahModelItems.fromJson(Map<String, dynamic> json) {
    return SerahModelItems(
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
