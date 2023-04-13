class Product {
  final int id;
  final String name;
  final String ketagori;
  final String harga;
  final String image;
  bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.ketagori,
    required this.harga,
    required this.image,
    this.isFavorite = false,
  });

  void toggleDone() {
    isFavorite = !isFavorite;
  }
}
