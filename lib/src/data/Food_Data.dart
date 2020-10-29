class Food {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double rating;

  Food(
      {this.id,
      this.name,
      this.imagePath,
      this.category,
      this.price,
      this.discount,
      this.rating});
}

final foods = [
  Food(
      id: '1',
      name: 'Hote coffe',
      imagePath: 'assets/images/breakfast.jpeg',
      category: '1',
      price: 22.0,
      discount: 10.0,
      rating: 23.0),
  Food(
      id: '1',
      name: 'Grilled Chiken',
      imagePath: 'assets/images/lunch.jpeg',
      category: '2',
      price: 35.0,
      discount: 5.0,
      rating: 40.0),
  Food(
      id: '1',
      name: 'Hote coffe',
      imagePath: 'assets/images/breakfast.jpeg',
      category: '1',
      price: 22.0,
      discount: 10.0,
      rating: 23.0),
  Food(
      id: '1',
      name: 'Grilled Chiken',
      imagePath: 'assets/images/lunch.jpeg',
      category: '2',
      price: 35.0,
      discount: 5.0,
      rating: 40.0),
  Food(
      id: '1',
      name: 'Hote coffe',
      imagePath: 'assets/images/breakfast.jpeg',
      category: '1',
      price: 22.0,
      discount: 10.0,
      rating: 23.0),

];
