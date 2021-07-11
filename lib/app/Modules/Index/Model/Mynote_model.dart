class Note {
  Note({
    required this.title,
    required this.contenu,
    required this.image,
    required this.dateTime,
    this.id,
  });

  String title;
  final String contenu;
  final String image;
  final DateTime dateTime;
  final int? id;

  factory Note.fromJson(Map<String, dynamic> json) {
    return new Note(
        id: json['_id'],
        title: json['title'],
        contenu: json['contenu'],
        image: json['image'],
        dateTime:
            new DateTime.fromMicrosecondsSinceEpoch(int.parse(json['date'])));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.id;
    data['title'] = this.title;
    data['contenu'] = this.contenu;
    data['image'] = this.image;
    data['date'] = this.dateTime.microsecondsSinceEpoch.toString();
    return data;
  }
}
