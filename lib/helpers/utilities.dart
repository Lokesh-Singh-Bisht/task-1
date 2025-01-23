import 'package:logger/logger.dart';

Logger lg = Logger(
  printer: PrefixPrinter(PrettyPrinter(
      noBoxingByDefault: true,
      methodCount: 0,
      errorMethodCount: 4,
      lineLength: 120,
      colors: true,
      printEmojis: true,
      dateTimeFormat: DateTimeFormat.none)),
);
