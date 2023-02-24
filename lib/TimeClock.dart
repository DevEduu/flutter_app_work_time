import 'dart:async';

void clock() {
  int minuto = 0;
  int seconds = 0;
  String clock;
  Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
    seconds++;
    clock = seconds <= 9 ? '0$seconds' : '$seconds';
    print(clock);
    if (seconds == 10) {
      timer.cancel();
    }
  });
}
