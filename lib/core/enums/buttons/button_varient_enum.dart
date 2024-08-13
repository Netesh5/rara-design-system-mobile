// enum ButtonVarient { filled, outline, ghost, link }

enum ButtonVarient {
  filled(name: "Filled"),
  outline(name: "outlined"),
  ghost(name: "Ghost"),
  link(name: "Link");

  final String name;

  const ButtonVarient({required this.name});
}
