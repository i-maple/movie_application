class DataModel {
  final String? title;
  final String? overview;
  final String? image;
  final String? releaseDate;
  final num? rating;
  final int? id;

  DataModel({
    this.id,
    this.title,
    this.image,
    this.overview,
    this.rating,
    this.releaseDate
  });

  factory DataModel.fromJson(Map data) {
    return DataModel(
      id: data['id'] as int,
      title: data['original_title'] as String,
      overview: data['overview'] as String,
      image: data['poster_path'] as String,
      rating: data['vote_average'] as num,
      releaseDate: data['release_date'] as String,
    );
  }
}
