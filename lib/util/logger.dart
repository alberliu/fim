import 'dart:convert';
import 'dart:io';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

var logger = Logger(
  printer: MyPrinter(),
  output: MultiOutput([ConsoleOutput(), FileOutput()]),
);

class FileOutput extends LogOutput {
  IOSink sink;

  @override
  void output(OutputEvent event) async {
    if (sink == null) {
      var storageDirectory = await getExternalStorageDirectory();
      var directory = Directory("${storageDirectory.path}logs");
      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }

      File file = File("${directory.path}log.txt");
      sink = file.openWrite(mode: FileMode.append);
    }

    sink.writeAll(event.lines, '\n');
  }
}

class MyPrinter extends LogPrinter {
  static final levelPrefixes = {
    Level.verbose: '[V]',
    Level.debug: '[D]',
    Level.info: '[I]',
    Level.warning: '[W]',
    Level.error: '[E]',
    Level.wtf: '[WTF]',
  };

  static final levelColors = {
    Level.verbose: AnsiColor.fg(AnsiColor.grey(0.5)),
    Level.debug: AnsiColor.none(),
    Level.info: AnsiColor.fg(12),
    Level.warning: AnsiColor.fg(208),
    Level.error: AnsiColor.fg(196),
    Level.wtf: AnsiColor.fg(199),
  };

  MyPrinter();

  @override
  List<String> log(LogEvent event) {
    var messageStr = _stringifyMessage(event.message);
    var errorStr = event.error != null ? '  ERROR: ${event.error}' : '';
    var timeStr = '${DateTime.now().toIso8601String()}';
    var stack = formatStackTrace(StackTrace.current);
    return ['${_labelFor(event.level)} $timeStr $stack $messageStr$errorStr'];
  }

  String _labelFor(Level level) {
    var prefix = levelPrefixes[level];
    return prefix;
  }

  String _stringifyMessage(dynamic message) {
    if (message is Map || message is Iterable) {
      var encoder = JsonEncoder.withIndent(null);
      return encoder.convert(message);
    } else {
      return message.toString();
    }
  }

  String formatStackTrace(StackTrace stackTrace) {
    var lines = stackTrace.toString().split('\n');
    var str = lines[3].replaceFirst(RegExp(r'#\d+\s+'), '');
    var start = str.indexOf("(");
    var end = str.indexOf(")");
    return str.substring(start + 1, end);
  }
}
