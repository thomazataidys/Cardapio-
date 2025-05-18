class MenuItem {
  final String name;
  final String desc;
  final String weight;
  final String image;
  final double price;

  MenuItem({
    required this.name,
    required this.desc,
    required this.weight,
    required this.image,
    required this.price,
  });

  factory MenuItem.fromMap(Map<String, dynamic> map) {
    return MenuItem(
      name: map['name'] ?? '',
      desc: map['desc'] ?? '',
      weight: map['weight'] ?? '',
      image: map['image'] ?? '',
      price: map['price'] ?? 0.0,
    );
  }
}
