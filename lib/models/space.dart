class Space {
  late int? id;
  late String? name;
  late String? imageUrl;
  late String? city;
  late String? country;
  late int? rating;
  late int? price;
  late String? address;
  late String? phone;
  late String? mapUrl;
  late List? photos;
  late int? numberOfKitchens;
  late int? numberOfBedrooms;
  late int? numberOfCupboards;

  Space({
    this.city,
    this.id,
    this.country,
    this.imageUrl,
    this.name,
    this.price,
    this.rating,
    this.address,
    this.phone,
    this.mapUrl,
    this.photos,
    this.numberOfKitchens,
    this.numberOfBedrooms,
    this.numberOfCupboards,
  });

  factory Space.fromJson(Map<String, dynamic> json) {
    return Space(
      id: json['id'],
      name: json['name'],
      city: json['city'],
      country: json['country'],
      imageUrl: json['image_url'],
      photos: json['photos'],
      price: json['price'],
      rating: json['rating'],
      address: json['address']!,
      phone: json['phone'],
      mapUrl: json['map_url'],
      numberOfKitchens: json['number_of_kitchens'],
      numberOfBedrooms: json['number_of_bedrooms'],
      numberOfCupboards: json['number_of_cupboards'],
    );
  }
}
