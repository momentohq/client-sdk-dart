class CollectionTtl {
  late Duration? _ttlSeconds;
  late bool _refreshTtl;

  CollectionTtl(Duration? ttlSeconds, bool refreshTtl) {
    _ttlSeconds = ttlSeconds;
    _refreshTtl = refreshTtl;
  }

  ttlSeconds() {
    return _ttlSeconds;
  }

  ttlMilliseconds() {
    if (_ttlSeconds == null) {
      return null;
    }
    return _ttlSeconds?.inMilliseconds;
  }

  refreshTtl() {
    return _refreshTtl;
  }

  static fromCacheTtl() {
    return CollectionTtl(null, false);
  }

  static of(Duration ttlSeconds) {
    return CollectionTtl(ttlSeconds, true);
  }

  static refreshTtlIfProvided(Duration? ttlSeconds) {
    return CollectionTtl(ttlSeconds, ttlSeconds == null ? true : false);
  }

  withRefreshTtlOnUpdates() {
    return CollectionTtl(_ttlSeconds, true);
  }

  withNoRefreshTtlOnUpdates() {
    return CollectionTtl(_ttlSeconds, false);
  }
}