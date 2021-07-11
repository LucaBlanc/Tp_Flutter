import 'package:tp_flutter/app/Modules/Index/Model/Mynote_model.dart';
import 'package:tp_flutter/app/Modules/Index/data/provider/Mynote_db_provider.dart';

class NoteRepository {
  final dbProvider = NoteDbProvider();

  saveResult(double result) async {
    final date = DateTime.now();
    final Note note = new Note(
        title: 'test', contenu: 'test', image: './test.png', dateTime: date);
    await dbProvider.insert(note.toJson());
  }

  Future<List<Note>> retrieve() async {
    Future.delayed(const Duration(seconds: 7), () => "7");
    final List<Map<String, dynamic>> historyList = await dbProvider.query();
    List<Note> newHistoryLists =
        historyList.map((e) => Note.fromJson(e)).toList();
    return newHistoryLists;
  }

  Future update(Note history) async {
    await dbProvider.update(history.toJson());
  }
}
