class Destination{
  // Identification
  final int id;
  final String name;
  final String country;
  final String category;
  // visuel
  final String imageUrl;
  // description
  final String description;
  // Tarification
  final double price;
  final String currency;
  //Evaluation
  final double rating;
  // Informations de voyage
  final String bestSeason;
  final double temperature;
  final String language;

  final bool isFavorite;

  const Destination({
    required this.id,
    required this.name,
    required this.country,
    required this.category,
    required this.imageUrl,
    required this.description,
    required this.price,
    required this.currency,
    required this.rating,
    required this.bestSeason,
    required this.temperature,
    required this.language,
    required this.isFavorite,});
}