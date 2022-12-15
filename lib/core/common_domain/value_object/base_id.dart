abstract class BaseId<T> {
  late final T _value;
  T get getValue => _value;

  set setValue(T value) => _value = value;
}
