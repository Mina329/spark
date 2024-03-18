import 'package:flutter/material.dart';
import 'package:spark/core/utils/assets_manager.dart';

List<String> customLoginProviderImages = [
  Assets.assetsImagesGoogle,
  Assets.assetsImagesFacebook,
];
Map<String, int> genresToIds = {
  "Action": 28,
  "Adventure": 12,
  "Animation": 16,
  "Comedy": 35,
  "Crime": 80,
  "Documentary": 99,
  "Drama": 18,
  "Family": 10751,
  "Fantasy": 14,
  "History": 36,
  "Horror": 27,
  "Music": 10402,
  "Mystery": 9648,
  "Romance": 10749,
  "Science Fiction": 878,
  "TV Movie": 10770,
  "Thriller": 53,
  "War": 10752,
  "Western": 37,
  "Action & Adventure": 10759,
  "Kids": 10762,
  "News": 10763,
  "Reality": 10764,
  "Sci-Fi & Fantasy": 10765,
  "Soap": 10766,
  "Talk": 10767,
  "War & Politics": 10768,
};

List<Color> genreColors = [
  const Color(0xFFFDD015),
  const Color(0xFFFF543E),
  const Color(0xFF372497),
  const Color(0xFF9B3C6A),
  const Color(0xFF956E4C),
  const Color(0xFFFE922A),
];
