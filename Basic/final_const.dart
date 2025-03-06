main() {
  // final and const has almost same work but const value Can never be change but final value can change on runtime
  final DateTime nowDateTime; //runtime time
  const double pi = 3.1416; // compile  time;

  nowDateTime = DateTime.now();

  print("$nowDateTime $pi");
}
