import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _WeekDayName = prefs.getStringList('ff_WeekDayName') ?? _WeekDayName;
    });
    _safeInit(() {
      _WeekCount =
          prefs.getStringList('ff_WeekCount')?.map(int.parse).toList() ??
              _WeekCount;
    });
    _safeInit(() {
      _stepCount = prefs.getInt('ff_stepCount') ?? _stepCount;
    });
    _safeInit(() {
      _heartCount = prefs.getInt('ff_heartCount') ?? _heartCount;
    });
    _safeInit(() {
      _gender = prefs.getString('ff_gender') ?? _gender;
    });
    _safeInit(() {
      _birthday = prefs.getString('ff_birthday') ?? _birthday;
    });
    _safeInit(() {
      _height = prefs.getString('ff_height') ?? _height;
    });
    _safeInit(() {
      _weight = prefs.getInt('ff_weight') ?? _weight;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _WeekDayName = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];
  List<String> get WeekDayName => _WeekDayName;
  set WeekDayName(List<String> value) {
    _WeekDayName = value;
    prefs.setStringList('ff_WeekDayName', value);
  }

  void addToWeekDayName(String value) {
    _WeekDayName.add(value);
    prefs.setStringList('ff_WeekDayName', _WeekDayName);
  }

  void removeFromWeekDayName(String value) {
    _WeekDayName.remove(value);
    prefs.setStringList('ff_WeekDayName', _WeekDayName);
  }

  void removeAtIndexFromWeekDayName(int index) {
    _WeekDayName.removeAt(index);
    prefs.setStringList('ff_WeekDayName', _WeekDayName);
  }

  void updateWeekDayNameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _WeekDayName[index] = updateFn(_WeekDayName[index]);
    prefs.setStringList('ff_WeekDayName', _WeekDayName);
  }

  void insertAtIndexInWeekDayName(int index, String value) {
    _WeekDayName.insert(index, value);
    prefs.setStringList('ff_WeekDayName', _WeekDayName);
  }

  List<int> _WeekCount = [2, 8, 9, 1, 6, 3, 8];
  List<int> get WeekCount => _WeekCount;
  set WeekCount(List<int> value) {
    _WeekCount = value;
    prefs.setStringList(
        'ff_WeekCount', value.map((x) => x.toString()).toList());
  }

  void addToWeekCount(int value) {
    _WeekCount.add(value);
    prefs.setStringList(
        'ff_WeekCount', _WeekCount.map((x) => x.toString()).toList());
  }

  void removeFromWeekCount(int value) {
    _WeekCount.remove(value);
    prefs.setStringList(
        'ff_WeekCount', _WeekCount.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromWeekCount(int index) {
    _WeekCount.removeAt(index);
    prefs.setStringList(
        'ff_WeekCount', _WeekCount.map((x) => x.toString()).toList());
  }

  void updateWeekCountAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _WeekCount[index] = updateFn(_WeekCount[index]);
    prefs.setStringList(
        'ff_WeekCount', _WeekCount.map((x) => x.toString()).toList());
  }

  void insertAtIndexInWeekCount(int index, int value) {
    _WeekCount.insert(index, value);
    prefs.setStringList(
        'ff_WeekCount', _WeekCount.map((x) => x.toString()).toList());
  }

  int _stepCount = 2000;
  int get stepCount => _stepCount;
  set stepCount(int value) {
    _stepCount = value;
    prefs.setInt('ff_stepCount', value);
  }

  int _heartCount = 5;
  int get heartCount => _heartCount;
  set heartCount(int value) {
    _heartCount = value;
    prefs.setInt('ff_heartCount', value);
  }

  String _gender = '';
  String get gender => _gender;
  set gender(String value) {
    _gender = value;
    prefs.setString('ff_gender', value);
  }

  String _birthday = '';
  String get birthday => _birthday;
  set birthday(String value) {
    _birthday = value;
    prefs.setString('ff_birthday', value);
  }

  String _height = '';
  String get height => _height;
  set height(String value) {
    _height = value;
    prefs.setString('ff_height', value);
  }

  int _weight = 0;
  int get weight => _weight;
  set weight(int value) {
    _weight = value;
    prefs.setInt('ff_weight', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
