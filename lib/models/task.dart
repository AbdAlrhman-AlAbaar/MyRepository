class task {
  final String name;
  bool isDone;

  task({required this.name, this.isDone = false});

  void donechange() {
    isDone = !isDone;
  }
}
