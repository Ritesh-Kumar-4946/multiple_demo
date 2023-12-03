/// A Logger For Flutter Apps
/// Usage:
/// 1) AppLog.i("Info Message");
/// 2) AppLog.i("Home Page", tag: "User Logging");
/// https://github.com/hiteshsahu/Flutter-Logger
/// https://stackoverflow.com/questions/49940719/how-to-log-data-to-the-flutter-console
/// https://levelup.gitconnected.com/the-better-way-to-debug-your-code-in-flutter-a53df472bc8
class AppLog {
  static const String _DEFAULT_TAG_PREFIX = "FlutterApp";

  ///use Log.v. Print all Logs
  static const int VERBOSE = 2;

  ///use Log.d. Print Debug Logs
  static const int DEBUG = 3;

  ///use Log.i. Print Info Logs
  static const int INFO = 4;

  ///use Log.w. Print warning logs
  static const int WARN = 5;

  ///use Log.e. Print error logs
  static const int ERROR = 6;

  ///use Log.wtf. Print Failure Logs(What a Terrible Failure= WTF)
  static const int WTF = 7;

  ///SET APP LOG LEVEL, Default ALL
  static int _currentLogLevel = VERBOSE;

  static setLogLevel(int priority) {
    int newPriority = priority;
    if (newPriority <= VERBOSE) {
      newPriority = VERBOSE;
    } else if (newPriority >= WTF) {
      newPriority = WTF;
    }
    _currentLogLevel = newPriority;
  }

  static int getLogLevel() {
    AppLog.i("Current Log Level is " + _getPriorityText(_currentLogLevel));
    return _currentLogLevel;
  }

  static _log(int priority, String tag, String message) {
    if (_currentLogLevel <= priority) {
      print(_getPriorityText(priority) + tag + ": " + message);
    }
  }

  static String _getPriorityText(int priority) {
    switch (priority) {
      case INFO:
        return "INFOⓘ | ";
      case DEBUG:
        return "DEBUG🎯| ";
      case ERROR:
        return "ERROR🧨|️ 🛑 ";  // here we are using emoji icons "https://emojipedia.org/direct-hit"
      case WARN:
        return "WARN⚠️| ";
      case WTF:
        return "WTF¯\\_(ツ)_/¯| ";
      case VERBOSE:
      default:
        return "";
    }
  }

  ///Print general logs
  static v(String message, {String tag = _DEFAULT_TAG_PREFIX}) {
    _log(VERBOSE, tag, message);
  }

  ///Print info logs
  static i(String message, {String tag = _DEFAULT_TAG_PREFIX}) {
    _log(INFO, tag, message);
  }

  ///Print debug logs
  static d(String message, {String tag = _DEFAULT_TAG_PREFIX}) {
    _log(DEBUG, tag, message);
  }

  ///Print warning logs
  static w(String message, {String tag = _DEFAULT_TAG_PREFIX}) {
    _log(WARN, tag, message);
  }

  ///Print error logs
  static e(String message, {String tag = _DEFAULT_TAG_PREFIX}) {
    _log(ERROR, tag, message);
  }

  ///Print failure logs
  static wtf(String message, {String tag = _DEFAULT_TAG_PREFIX}) {
    _log(WTF, tag, message);
  }

/*AppLog.v("-----------------------------");
AppLog.d("I am Debug Log With Default TAG");
AppLog.i("I am Info Log With Default TAG");
AppLog.w("I am Warn Log With Default TAG");
AppLog.e("I am Error Log With Default TAG");
AppLog.wtf("I am Failure Log With Default TAG");
AppLog.v("I am Verbose Log With Default TAG");
AppLog.v("-----------------------------");
AppLog.d("I am Debug Log With Custom TAG", tag: "Awesome Widget");
AppLog.i("I am Info Log With Custom TAG", tag: "Awesome Widget");
AppLog.w("I am Warn Log With Custom TAG", tag: "Awesome Widget");
AppLog.e("I am Error Log With Custom TAG", tag: "Awesome Widget");
AppLog.wtf("I am Failure Log With Custom TAG", tag: "Awesome Widget");
AppLog.v("I am Verbose Log With Custom TAG", tag: "Awesome Widget");
AppLog.v("-----------------------------");*/

/*final logger = Logger(
      printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 5,
    lineLength: 50,
    colors: true,
    printEmojis: true,
    printTime: true,
  ));

  static var loggers = Logger();

  static printLogD(String tag, String data) {
    loggers.d("${tag}__$data");
  }

  static printLogV(String tag, String data) {
    loggers.v("${tag}__$data");
  }

  static printLogI(String tag, String data) {
    loggers.i("${tag}__$data");
  }

  static printLogW(String tag, String data) {
    loggers.w("${tag}__$data");
  }

  static printLogE(String tag, String data) {
    loggers.e("${tag}__$data");
  }

  static printLogWTF(String tag, String data) {
    loggers.wtf("${tag}__$data");
  }*/
/*var logger = Logger();
import 'package:learningflutterdemo/utils/constants/app_functions.dart';
    AppLog.printLogD(_tag, , "Debug logger is working!");
    AppLog.printLogV(_tag, "Verbose log");
    AppLog.printLogI(_tag, "Info log");
    AppLog.printLogW(_tag, "Warning log");
    AppLog.printLogE(_tag, "Error log");
    AppLog.printLogWTF(_tag, "What a terrible failure log");*/
}
