typedef Predicate<T> = bool Function(T value);
typedef Transformer<T, R> = R Function(T value);

List<T> filter<T>(List<T> list, Predicate<T> predicate) {
  return list.where(predicate).toList();
}

List<R> transform<T, R>(List<T> list, Transformer<T, R> transformer) {
  return list.map(transformer).toList();
}

void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<int> evens = filter(numbers, (n) => n % 2 == 0);
  print(evens);

  List<String> labels = transform(numbers, (n) => "Item-$n");
  print(labels);
}