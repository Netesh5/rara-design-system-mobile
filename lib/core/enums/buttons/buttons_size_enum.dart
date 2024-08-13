enum ButtonSize {
  small(height: 36, width: 117),
  medium(height: 44, width: 123),
  large(height: 46, width: 130),
  custom(height: 50, width: 160);

  final double height;
  final double width;

  const ButtonSize({required this.height, required this.width});
}

enum FAButtonSize {
  small(height: 36, width: 36, name: "Small"),
  medium(height: 48, width: 48, name: "Medium"),
  large(height: 72, width: 72, name: "Large"),
  custom(height: 100, width: 100, name: "Custom");

  final double height;
  final double width;
  final String name;

  const FAButtonSize(
      {required this.height, required this.width, required this.name});
}
