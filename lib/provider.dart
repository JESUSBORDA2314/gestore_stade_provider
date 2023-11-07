import 'package:flutter/foundation.dart';

class TextProvider with ChangeNotifier {
  String _text1 = "";
  String _text2 = "";

  String get text1 => _text1;
  String get text2 => _text2;

  //Cambio de estado a las variables
  Future<void> setTexts1({
    required String value1,
  }) async {
    _text1 = value1;

    notifyListeners();
  }

  Future<void> setTexts2({
    required String value2,
  }) async {
    _text2 = value2;

    notifyListeners();
  }
}
