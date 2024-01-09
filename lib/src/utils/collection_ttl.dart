class CollectionTtl {
  late Duration? _ttlSeconds;
  late bool _refreshTtl;

  CollectionTtl(Duration? ttlSeconds, bool refreshTtl) {
    _ttlSeconds = ttlSeconds;
    _refreshTtl = refreshTtl;
  }

  int? ttlSeconds() {
    return _ttlSeconds?.inSeconds;
  }

  int? ttlMilliseconds() {
    if (_ttlSeconds == null) {
      return null;
    }
    return _ttlSeconds?.inMilliseconds;
  }

  bool refreshTtl() {
    return _refreshTtl;
  }

  static CollectionTtl fromCacheTtl() {
    return CollectionTtl(null, false);
  }

  static CollectionTtl of(Duration ttlSeconds) {
    return CollectionTtl(ttlSeconds, true);
  }

  static CollectionTtl refreshTtlIfProvided(Duration? ttlSeconds) {
    return CollectionTtl(ttlSeconds, ttlSeconds == null ? true : false);
  }

  CollectionTtl withRefreshTtlOnUpdates() {
    return CollectionTtl(_ttlSeconds, true);
  }

  CollectionTtl withNoRefreshTtlOnUpdates() {
    return CollectionTtl(_ttlSeconds, false);
  }
}
