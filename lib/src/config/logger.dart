import 'package:logging/logging.dart';

enum LogLevel {
  trace,
  debug,
  info,
  warn,
  error,
  fatal,
  off,
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
    case LogLevel.off:
      return Level.OFF;
  }
}

class MomentoLogger {
  final Logger _logger;

  MomentoLogger(String name) : _logger = Logger(name) {
    Logger.root.level = Level.ALL;
    hierarchicalLoggingEnabled = true;
  }

  void trace(String message) {
    _logger.finest(message);
  }

  void debug(String message) {
    _logger.fine(message);
  }

  void info(String message) {
    _logger.info(message);
  }

  void warn(String message) {
    _logger.warning(message);
  }

  void error(String message) {
    _logger.severe(message);
  }

  void fatal(String message) {
    _logger.shout(message);
  }

  void setLevel(LogLevel logLevel) {
    _logger.level = determineLoggerLevel(logLevel);
  }
}
