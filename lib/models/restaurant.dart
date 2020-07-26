class Restaurant {
  final String name;
  final List<String> tags;
  final int offer;
  final double distance;
  final int distInMins;
  final double rating;
  final int totalReviews;
  final int costPerPerson;
  final String logo;
  final bool topBrand;

  Restaurant(
    this.name,
    this.tags,
    this.offer,
    this.distance,
    this.distInMins,
    this.rating,
    this.totalReviews,
    this.costPerPerson,
    this.logo,
    this.topBrand,
  );
}