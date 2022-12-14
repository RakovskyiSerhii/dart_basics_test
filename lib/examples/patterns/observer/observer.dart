abstract class Listener<T> {
  void notify(T? value);
}

abstract class Observer<T> {
  final Map<String, Listener<T>> listeners = {};
  T? value;

  void addListener(String key, Listener<T> listener) {
    listeners[key] = listener;
  }

  void removeListener(String key) {
    listeners.remove(key);
  }

  void notifyListeners() {
    for (var element in listeners.values) {
      element.notify(value);
    }
  }
}

class Storage<T> extends Observer<T> {
  void changeValue(T value) {
    this.value = value;
    notifyListeners();
  }
}

class StorageListener<T> implements Listener<T> {
  final Function(T? onChange) onChange;

  StorageListener(this.onChange);
  @override
  void notify(T? value) {
    onChange.call(value);
  }
}

void main(List<String> args) {
  final Storage<int> storage = Storage();
  storage.addListener('key', StorageListener((value) {
    print('changed $value');
  }));
  storage.addListener('key1', StorageListener((value) {
    print('updated $value');
  }));
  storage.changeValue(12);
}
