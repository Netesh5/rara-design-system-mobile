extension Captialize on String {
  capitalize() {
    final res = substring(1);
    return this[0].toUpperCase() + res;
  }
}
