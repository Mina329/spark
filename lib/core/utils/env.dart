import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static String TMDB_API_KEY = dotenv.env['TMDB_API_KEY']!;
  static String BASE_URL = dotenv.env['BASE_URL']!;

}