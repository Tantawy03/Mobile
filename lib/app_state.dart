import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _OpenAIKey = 'NO_KEY';
  String get OpenAIKey => _OpenAIKey;
  set OpenAIKey(String value) {
    _OpenAIKey = value;
  }
}
