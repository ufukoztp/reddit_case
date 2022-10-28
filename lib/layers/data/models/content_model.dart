class Content {
  String? desc;
  String? title;
  String? thumbnail;
  String? image;
  String? ups;

  Content();

  Content.fromJson(Map<String, dynamic> json) {
    desc = json['selftext'];
    title = json['title'];
    thumbnail = json['thumbnail'];
    image = json['image'];
    }


}