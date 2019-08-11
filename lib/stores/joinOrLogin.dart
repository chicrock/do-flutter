import 'package:flutter/foundation.dart';

class JoinOrLogin extends ChangeNotifier {
  // Need to set private variable.
  // Because cannot get notify via change directly.
  bool _isJoin = false;

  bool get isJoin => _isJoin;

  void toggle() {
    _isJoin = !_isJoin;

    // Send nofify to widget is listening
    notifyListeners();
  }
}
