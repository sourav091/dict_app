sealed class Resource<T> {
  final T? data;
  final String? message;
  Resource({required this.data, required this.message});
}

class Success<T> extends Resource<T> {
  Success({required super.data, super.message = ""});
}

class Loading<T> extends Resource<T> {
  Loading({super.data, super.message = ""});
}
