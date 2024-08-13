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
  small(height: 36, width: 36),
  medium(height: 48, width: 48),
  large(height: 72, width: 72);

  final double height;
  final double width;

  const FAButtonSize({required this.height, required this.width});
}
