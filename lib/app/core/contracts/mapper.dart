abstract class Mapper<T> {
  T fromMap(Map<String, dynamic> json);
  Map toMap(T object);
}
