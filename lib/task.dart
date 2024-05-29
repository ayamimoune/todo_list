/// Classe représentant une tâche dans la liste de tâches.
class Task {
  /// Le titre de la tâche.
  String title;

  /// Indique si la tâche est terminée.
  bool isDone;

  /// Constructeur de la classe [Task].
  Task({required this.title, this.isDone = false});
}
