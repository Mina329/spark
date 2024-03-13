import 'package:spark/core/utils/strings_manager.dart';

List<String> moviesNowPlaying = [
  'https://image.tmdb.org/t/p/original/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
  'https://image.tmdb.org/t/p/original/kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg',
  'https://image.tmdb.org/t/p/original/hhvMTxlTZtnCOe7YFhod9uz3m37.jpg',
  'https://image.tmdb.org/t/p/original/1N7terrMeZPwK5qq31MUD0HQ3IG.jpg',
  'https://image.tmdb.org/t/p/original/kCGlIMHnOm8JPXq3rXM6c5wMxcT.jpg',
];
List<String> moviesTrending = [
  'https://image.tmdb.org/t/p/original/sMp34cNKjIb18UBOCoAv4DpCxwY.jpg',
  'https://image.tmdb.org/t/p/original/kCGlIMHnOm8JPXq3rXM6c5wMxcT.jpg',
  'https://image.tmdb.org/t/p/original/8b8R8l88Qje9dn9OE8PY05Nxl1X.jpg',
  'https://image.tmdb.org/t/p/original/gavGnAMTXPkpoFgG0stwgIgKb64.jpg',
  'https://image.tmdb.org/t/p/original/d5NXSklXo0qyIYkgV94XAgMIckC.jpg',
];
List<String> moviesPopular = [
  'https://image.tmdb.org/t/p/original/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
  'https://image.tmdb.org/t/p/original/kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg',
  'https://image.tmdb.org/t/p/original/hhvMTxlTZtnCOe7YFhod9uz3m37.jpg',
  'https://image.tmdb.org/t/p/original/1N7terrMeZPwK5qq31MUD0HQ3IG.jpg',
  'https://image.tmdb.org/t/p/original/kCGlIMHnOm8JPXq3rXM6c5wMxcT.jpg',
];
List<String> moviesTopRated = [
  'https://image.tmdb.org/t/p/original/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg',
  'https://image.tmdb.org/t/p/original/3bhkrj58Vtu7enYsRolD1fZdja1.jpg',
  'https://image.tmdb.org/t/p/original/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg',
  'https://image.tmdb.org/t/p/original/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg',
  'https://image.tmdb.org/t/p/original/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg',
];
List<String> moviesUpComing = [
  'https://image.tmdb.org/t/p/original/kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg',
  'https://image.tmdb.org/t/p/original/lYwjlcBjokC9EhfzfAOkTMQd5Ku.jpg',
  'https://image.tmdb.org/t/p/original/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg',
  'https://image.tmdb.org/t/p/original/A7EByudX0eOzlkQ2FIbogzyazm2.jpg',
  'https://image.tmdb.org/t/p/original/hUu9zyZmDd8VZegKi1iK1Vk0RYS.jpg',
];
List<String> moviesExploreTitles = [
  StringsManager.nowPlaying,
  StringsManager.etrendingMovies,
  StringsManager.popularMovies,
  StringsManager.topRatedMovies,
  StringsManager.upComingMovies
];

List<List<String>> moviesExploreEvents = [
  moviesNowPlaying,
  moviesTrending,
  moviesPopular,
  moviesTopRated,
  moviesUpComing,
];
List<Map<String, dynamic>> moviesGenres = [
  {"id": 28, "name": "Action"},
  {"id": 12, "name": "Adventure"},
  {"id": 16, "name": "Animation"},
  {"id": 35, "name": "Comedy"},
  {"id": 80, "name": "Crime"},
  {"id": 99, "name": "Documentary"},
  {"id": 18, "name": "Drama"},
  {"id": 10751, "name": "Family"},
  {"id": 14, "name": "Fantasy"},
  {"id": 36, "name": "History"},
  {"id": 27, "name": "Horror"},
  {"id": 10402, "name": "Music"},
  {"id": 9648, "name": "Mystery"},
  {"id": 10749, "name": "Romance"},
  {"id": 878, "name": "Science Fiction"},
  {"id": 10770, "name": "TV Movie"},
  {"id": 53, "name": "Thriller"},
  {"id": 10752, "name": "War"},
  {"id": 37, "name": "Western"}
];
List<String> tvShowsExploreTitles = [
  StringsManager.airingTodayShows,
  StringsManager.onTheAirShows,
  StringsManager.etrendingShows,
  StringsManager.popularShows,
  StringsManager.topRatedShows,
];

List<List<String>> tvShowsExploreEvents = [
  tvShowsAiringTodayShows,
  tvShowsOnTheAirShows,
  tvShowsTrendingShows,
  tvShowsPopularShows,
  tvShowsTopRatedShows,
];
List<String> tvShowsAiringTodayShows = [
  'https://image.tmdb.org/t/p/original/onSD9UXfJwrMXWhq7UY7hGF2S1h.jpg',
  'https://image.tmdb.org/t/p/original/fNHBzjxsydcAssxXqb5IV2obDdU.jpg',
  'https://image.tmdb.org/t/p/original/9oZjOh3Va3FsiLGouhSogFsBX9G.jpg',
  'https://image.tmdb.org/t/p/original/9jkThAGYj2yp8jsS6Nriy5mzKFT.jpg',
  'https://image.tmdb.org/t/p/original/v9nGSRx5lFz6KEgfmgHJMSgaARC.jpg',
];
List<String> tvShowsOnTheAirShows = [
  'https://image.tmdb.org/t/p/original/3uU5uJzOX7xe7mn7YKpBM9oiEZO.jpg',
  'https://image.tmdb.org/t/p/original/5HK6t0yxt0p0L5d3lI7H6iU8YsV.jpg',
  'https://image.tmdb.org/t/p/original/ywbacot78IuNhGW4uVZPxxxVTkm.jpg',
  'https://image.tmdb.org/t/p/original/t6jVlbPMtZOJoAOfeoR4yQmnjXM.jpg',
  'https://image.tmdb.org/t/p/original/7dFZJ2ZJJdcmkp05B9NWlqTJ5tq.jpg',
];
List<String> tvShowsTrendingShows = [
  'https://image.tmdb.org/t/p/original/ywbacot78IuNhGW4uVZPxxxVTkm.jpg',
  'https://image.tmdb.org/t/p/original/tw3tzfXaSpmUZIB8ZNqNEGzMBCy.jpg',
  'https://image.tmdb.org/t/p/original/dBsDWUcdfbuZwglgyeeQ9ChRoS4.jpg',
  'https://image.tmdb.org/t/p/original/onCLyCOgszTIyyVs2XKYSkKPOPG.jpg',
  'https://image.tmdb.org/t/p/original/hmHA5jqxN3ESIAGx0jAwV7TJhTQ.jpg',
];
List<String> tvShowsPopularShows = [
  'https://image.tmdb.org/t/p/original/jmU8HlTDn87xmRqXagcL2swDr8I.jpg',
  'https://image.tmdb.org/t/p/original/onSD9UXfJwrMXWhq7UY7hGF2S1h.jpg',
  'https://image.tmdb.org/t/p/original/oA8QVTGlAN511uCAMDN60aVQUs1.jpg',
  'https://image.tmdb.org/t/p/original/2Fja87aTeuXxTEI1MH2IuHHSsLq.jpg',
  'https://image.tmdb.org/t/p/original/v9nGSRx5lFz6KEgfmgHJMSgaARC.jpg',
];
List<String> tvShowsTopRatedShows = [
  'https://image.tmdb.org/t/p/original/ztkUQFLlC19CCMYHW9o1zWhJRNq.jpg',
  'https://image.tmdb.org/t/p/original/fqldf2t8ztc9aiwn3k6mlX3tvRT.jpg',
  'https://image.tmdb.org/t/p/original/5HK6t0yxt0p0L5d3lI7H6iU8YsV.jpg',
  'https://image.tmdb.org/t/p/original/rXojaQcxVUubPLSrFV8PD4xdjrs.jpg',
  'https://image.tmdb.org/t/p/original/cMD9Ygz11zjJzAovURpO75Qg7rT.jpg',
];
List<Map<String, dynamic>> tvShowsGenres = [
  {"id": 10759, "name": "Action & Adventure"},
  {"id": 16, "name": "Animation"},
  {"id": 35, "name": "Comedy"},
  {"id": 80, "name": "Crime"},
  {"id": 99, "name": "Documentary"},
  {"id": 18, "name": "Drama"},
  {"id": 10751, "name": "Family"},
  {"id": 10762, "name": "Kids"},
  {"id": 9648, "name": "Mystery"},
  {"id": 10763, "name": "News"},
  {"id": 10764, "name": "Reality"},
  {"id": 10765, "name": "Sci-Fi & Fantasy"},
  {"id": 10766, "name": "Soap"},
  {"id": 10767, "name": "Talk"},
  {"id": 10768, "name": "War & Politics"},
  {"id": 37, "name": "Western"}
];
List<String> peoplesExploreTitles = [
  StringsManager.popularCelebrities,
  StringsManager.trendingCelebrities,
];

List<List<String>> peoplesExploreEvents = [
  popularPeople,
  trendingPeople,
];
List<String> popularPeople = [
  'https://image.tmdb.org/t/p/original/lldeQ91GwIVff43JBrpdbAAeYWj.jpg',
  'https://image.tmdb.org/t/p/original/cZ8a3QvAnj2cgcgVL6g4XaqPzpL.jpg',
  'https://image.tmdb.org/t/p/original/f8e41Oon18FiEZr4zgyJDVUqOeh.jpg',
  'https://image.tmdb.org/t/p/original/qYiaSl0Eb7G3VaxOg8PxExCFwon.jpg',
  'https://image.tmdb.org/t/p/original/9pLUnjMgIEWXi0mlHYzie9cKUTD.jpg',
];
List<String> trendingPeople = [
  'https://image.tmdb.org/t/p/original/cZ8a3QvAnj2cgcgVL6g4XaqPzpL.jpg',
  'https://image.tmdb.org/t/p/original/xuAIuYSmsUzKlUMBFGVZaWsY3DZ.jpg',
  'https://image.tmdb.org/t/p/original/fEIz0ljk9CBrp3AitM5nwjfoGVu.jpg',
  'https://image.tmdb.org/t/p/original/7wMyr6F3yzvbSpu2XMxSW3vObED.jpg',
  'https://image.tmdb.org/t/p/original/im9SAqJPZKEbVZGmjXuLI4O7RvM.jpg',
];
