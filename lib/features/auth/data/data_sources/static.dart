import 'package:flutter/material.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/features/auth/data/models/genre_model.dart';

List<String> customLoginProviderImages = [
  Assets.assetsImagesGoogle,
  Assets.assetsImagesFacebook,
];

List<GenreModel> genres = [
  GenreModel(id: "28", name: "Action", type: GenreModelType.Movie),
  GenreModel(id: "12", name: "Adventure", type: GenreModelType.Movie),
  GenreModel(id: "16", name: "Animation", type: GenreModelType.Both),
  GenreModel(id: "35", name: "Comedy", type: GenreModelType.Both),
  GenreModel(id: "80", name: "Crime", type: GenreModelType.Both),
  GenreModel(id: "99", name: "Documentary", type: GenreModelType.Both),
  GenreModel(id: "18", name: "Drama", type: GenreModelType.Both),
  GenreModel(id: "10751", name: "Family", type: GenreModelType.Both),
  GenreModel(id: "14", name: "Fantasy", type: GenreModelType.Movie),
  GenreModel(id: "36", name: "History", type: GenreModelType.Movie),
  GenreModel(id: "27", name: "Horror", type: GenreModelType.Movie),
  GenreModel(id: "10402", name: "Music", type: GenreModelType.Movie),
  GenreModel(id: "9648", name: "Mystery", type: GenreModelType.Both),
  GenreModel(id: "10749", name: "Romance", type: GenreModelType.Movie),
  GenreModel(id: "878", name: "Science Fiction", type: GenreModelType.Movie),
  GenreModel(id: "10770", name: "TV Movie", type: GenreModelType.Movie),
  GenreModel(id: "53", name: "Thriller", type: GenreModelType.Movie),
  GenreModel(id: "10752", name: "War", type: GenreModelType.Movie),
  GenreModel(id: "37", name: "Western", type: GenreModelType.Both),
  GenreModel(
      id: "10759", name: "Action & Adventure", type: GenreModelType.TV_Show),
  GenreModel(id: "10762", name: "Kids", type: GenreModelType.TV_Show),
  GenreModel(id: "10763", name: "News", type: GenreModelType.TV_Show),
  GenreModel(id: "10764", name: "Reality", type: GenreModelType.TV_Show),
  GenreModel(id: "10765", name: "Sci-Fi & Fantasy", type: GenreModelType.TV_Show),
  GenreModel(id: "10766", name: "Soap", type: GenreModelType.TV_Show),
  GenreModel(id: "10767", name: "Talk", type: GenreModelType.TV_Show),
  GenreModel(id: "10768", name: "War & Politics", type: GenreModelType.TV_Show),
];
List<Color> genreColors = [
  const Color(0xFFFDD015),
  const Color(0xFFFF543E),
  const Color(0xFF372497),
  const Color(0xFF9B3C6A),
  const Color(0xFF956E4C),
  const Color(0xFFFE922A),
];
