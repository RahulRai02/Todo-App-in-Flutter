class Todo {
  String? id;
  String todoText;
  late bool isDone;

  Todo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<Todo> todoListItems() {
    return [
      Todo(id: '01', todoText: 'Morning Excercise', isDone: true),
      Todo(id: '02', todoText: 'Buy Groceries', isDone: true),
      Todo(
        id: '03',
        todoText: 'Check Emails',
      ),
      Todo(
        id: '04',
        todoText: 'Meetings',
      ),
      Todo(
        id: '05',
        todoText: 'Work on dart',
      ),
      Todo(
        id: '06',
        todoText: 'Web series',
      ),
    ];
  }
}
