class ListOfMoviesModel {
  List<Movies>? movies;

  ListOfMoviesModel({this.movies});

  ListOfMoviesModel.fromJson(Map<String, dynamic> json) {
    if (json['movies'] != null) {
      movies = <Movies>[];
      json['movies'].forEach((v) {
        movies!.add(new Movies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.movies != null) {
      data['movies'] = this.movies!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Movies {
  int? id;
  int? categoryId;
  String? title;
  String? summary;
  List<Actors>? actors;
  String? director;
  List<String>? writers;
  double? rating;
  String? youtubeVideoId;
  String? year;

  Movies(
      {this.id,
      this.categoryId,
      this.title,
      this.summary,
      this.actors,
      this.director,
      this.writers,
      this.rating,
      this.youtubeVideoId,
      this.year});

  Movies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    title = json['title'];
    summary = json['summary'];
    if (json['actors'] != null) {
      actors = <Actors>[];
      json['actors'].forEach((v) {
        actors!.add(new Actors.fromJson(v));
      });
    }
    director = json['director'];
    writers = json['writers'].cast<String>();
    rating = json['rating'];
    youtubeVideoId = json['youtube_video_id'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['title'] = this.title;
    data['summary'] = this.summary;
    if (this.actors != null) {
      data['actors'] = this.actors!.map((v) => v.toJson()).toList();
    }
    data['director'] = this.director;
    data['writers'] = this.writers;
    data['rating'] = this.rating;
    data['youtube_video_id'] = this.youtubeVideoId;
    data['year'] = this.year;
    return data;
  }
}

class Actors {
  int? id;
  String? name;

  Actors({this.id, this.name});

  Actors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
