class HajjModel {
  String? text;
  String? title;

  HajjModel({this.text, this.title});

  factory HajjModel.fromJson(Map<String, dynamic> json) => HajjModel(
        text: json['text']?.toString(),
        title: json['title']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        if (text != null) 'text': text,
        if (title != null) 'title': title,
      };
}
