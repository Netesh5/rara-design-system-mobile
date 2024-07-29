enum ButtonSize {
  small(height: 36, width: 117),
  medium(height: 44, width: 123),
  large(height: 46, width: 130);

  final double height;
  final double width;

  const ButtonSize({required this.height, required this.width});
}
