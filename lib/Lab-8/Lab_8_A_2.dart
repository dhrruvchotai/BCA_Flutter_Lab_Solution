class Executor {
  void execute(Function action) {
    print("Executor: Before calling the passed function.");
    action();
    print("Executor: After calling the passed function.");
  }
}
class Provider {
  void sayHello() {
    print("Hello from Provider!");
  }
}

void main() {
  Provider provider = Provider();
  Executor executor = Executor();

  executor.execute(provider.sayHello);
}
