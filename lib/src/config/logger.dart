import 'package:logging/logging.dart';

enum LogLevel {
  trace,
  debug,
  info,
  warn,
  error,
  fatal,
}

Level determineLoggerLevel(LogLevel logLevel) {
  switch (logLevel) {
    case LogLevel.trace:
      return Level.ALL;
    case LogLevel.debug:
      return Level.FINE;
    case LogLevel.info:
      return Level.INFO;
    case LogLevel.warn:
      return Level.WARNING;
    case LogLevel.error:
      return Level.SEVERE;
    case LogLevel.fatal:
      return Level.SHOUT;
  }
}
