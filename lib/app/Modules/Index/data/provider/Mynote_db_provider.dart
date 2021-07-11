import 'dart:io';

class NoteDbProvider {
  static final _databaseName = "my_tp1.db";
  static final _databaseVersion = 1;
  static final table = 'history';
  static final cId = '_id';
  static final cTitle = 'title';
  static final cContenu = 'contenu';
  static final cImage = 'image';
  static final cDateTime = 'dateTime';

  insert(Map<String, dynamic> json) {}

  query() {}

  update(Map<String, dynamic> json) {}
}
