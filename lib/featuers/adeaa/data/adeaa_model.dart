class AdeaaModel {
  String? text;

  AdeaaModel({this.text});

  factory AdeaaModel.fromJson(Map<String, dynamic> json) => AdeaaModel(
        text: json['text']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (text != null) 'text': text,
      };
}
