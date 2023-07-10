abstract class DataState<T> {
  final T? data;
  final String? error;
  final int code;
  const DataState(this.data, this.code, this.error);
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T? data) : super(data, 200, null);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(String error, int code, {T? data = null})
      : super(data, code, error);
}

class DataLoading<T> extends DataState<T> {
  const DataLoading(String info, int code, {T? data = null})
      : super(data, code, info);
}
