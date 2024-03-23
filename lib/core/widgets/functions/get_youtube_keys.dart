List<String> getYoutubeKeys(List<dynamic>? videos) {
  List<String> keys = [];
  for (var video in videos ?? []) {
    if (video.key != null && video.key!.isNotEmpty && video.site == 'YouTube') {
      keys.add(video.key);
    }
  }
  return keys;
}
