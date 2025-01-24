

class Tour {
  final String about;
  final String alamat;
  final String category;
  final String image;
  final String name;
  final num price;
  final num rating;

  Tour({
    required this.about,
    required this.alamat,
    required this.category,
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
  });

  // Factory method dengan validasi dan fallback nilai default
  factory Tour.from(Map<String, dynamic> json) {
    return Tour(
      about: json['about'] as String? ?? '',
      alamat: json['alamat'] as String? ?? '',
      category: json['category'] as String? ?? '',
      image: json['image'] as String? ?? '',
      name: json['name'] as String? ?? '',
      price: (json['price'] is num) 
          ? json['price'] as num 
          : num.tryParse(json['price'].toString()) ?? 0,
      rating: (json['rating'] is num) 
          ? json['rating'] as num 
          : num.tryParse(json['rating'].toString()) ?? 0,
    );
  }

  // Objek Tour kosong untuk fallback
  static Tour get empty => Tour(
    about: '',
    alamat: '',
    category: '',
    image: '',
    name: '',
    price: 0,
    rating: 0,
  );
}


// class Tour {
//   final String about;
//   final String alamat;
//   final String category;
//   final String image;
//   final String name;
//   final num price;
//   final num rating;
//   Tour({
//     required this.about,
//     required this.alamat,
//     required this.category,
//     required this.image,
//     required this.name,
//     required this.price,
//     required this.rating,
//   });

//   factory Tour.from(Map<String, dynamic> json) {
//     return Tour(
//       about: json['about'] as String,
//       alamat: json['alamat'] as String,
//       category: json['category'] as String,
//       image: json['image'] as String,
//       name: json['name'] as String,
//       price: json['price'] as num,
//       rating: json['rating'] as num,
//     );
//   }

//   static Tour get empty => Tour(
//       about: '',
//       alamat: '',
//       category: '',
//       image: '',
//       name: '',
//       price: 0,
//       rating: 0);
// }
