String formatTime(int minutesTotal) {
  int hours = minutesTotal ~/ 60;
  int minutes = minutesTotal % 60;

  return "${hours}h ${minutes}m";
}
