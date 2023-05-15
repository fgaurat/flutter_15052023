Map getTodo(int id) {
  Map todo = {
    "userId": 1,
    "id": id,
    "title": "delectus aut autem",
    "completed": false
  };

  return todo;
}

Future<Map> getTodoAsync(int id) {
  Map todo = {
    "userId": 1,
    "id": id,
    "title": "delectus aut autem",
    "completed": false
  };

  var f = Future<Map>.delayed(Duration(seconds: 1), () => todo);
  return f;
}

void main_hoooooo(List<String> args) {
  // Map todo = getTodo(1);
  Future<Map> fTodo = getTodoAsync(1);
  fTodo.then((todo) {
    print(todo);
    getTodoAsync(todo["id"] + 1).then((todo) {
      print(todo);
      getTodoAsync(todo["id"] + 1).then((todo) {
        print(todo);
        getTodoAsync(todo["id"] + 1).then((todo) => print(todo));
      });
    });
  });
}

void main01(List<String> args) async {
  Map todo = await getTodoAsync(1);
  print(todo);
  Map todo2 = await getTodoAsync(todo['id'] + 1);
  print(todo2);
}

void main(List<String> args) async {
  Future<Map> fTodo1 = getTodoAsync(1);
  Future<Map> fTodo2 = getTodoAsync(2);
  Future<Map> fTodo3 = getTodoAsync(3);
  Future<Map> fTodo4 = getTodoAsync(4);

  List<Future<Map>> l = [fTodo1, fTodo2, fTodo3, fTodo4];

  List<Map> m = await Future.wait(l);

  print(m);
}
