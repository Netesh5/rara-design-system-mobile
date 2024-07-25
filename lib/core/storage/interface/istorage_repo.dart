abstract interface class IStorageRepo<T> {
  Future<void> save({required T data, required String key});
  Future<void> clear({required String key});
  Future<T?> fetch({required String key});
}
