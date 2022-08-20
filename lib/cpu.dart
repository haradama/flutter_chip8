class CPU {
  List<bool> memory = List.filled(4096, false);
  List<bool> register = List.filled(16, false);
  int soundTimer = 0;
  int delayTimer = 0;
  int index = 0;
  int programCounter = 0;
  var stack = [];

  void onKeyPress(symbol, modifiers) {}
  void onKeyRelease(symbol, modifiers) {}
}
