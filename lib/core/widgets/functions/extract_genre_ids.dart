

List<int>? extractGenreIds(List<dynamic>? genres) {
  List<int>? ids = [];
  for (var genre in genres ?? []) {
    ids.add(genre.id);
  }
  return ids;
}
