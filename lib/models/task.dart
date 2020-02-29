class Task implements Comparable {
  final String name;
  bool isDone;

  Task({
    this.name,
    this.isDone = false,
  });

  void toggleDone() {
    isDone = !isDone;
  }

  @override
  int compareTo(other) {
    Task that = other;
    if (this.isDone == other.isDone) {
      return 0;
    } else if (this.isDone == true && that.isDone == false) {
      return 1;
    }
    return -1;
  }
}
