currentTime() => DateTime.now().toIso8601String();
// StreamSubscription getPeriodicTime(int number) => 
//   Stream.periodic(Duration(seconds: number)).listen((_) => DateTime.now().toIso8601String());

Stream getPeriodicTime(Duration number) => 
  Stream.periodic(number, (_) => currentTime());