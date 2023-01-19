class NoteModel {
  int id;
  String title;
  String body;
  DateTime creation_date;

  NoteModel(this.id, this.title, this.body, this.creation_date); // Constructor

  // create a function to convert our item into map
  Map<String, dynamic> toMap() {
    return ({
      "id": id,
      "title": title,
      "body": body,
      "creation_date": creation_date,
    });
  }
}
