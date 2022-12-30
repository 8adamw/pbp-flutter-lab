import 'dart:convert';

List<WatchlistItem> welcomeFromJson(String str) =>
    List<WatchlistItem>.from(json.decode(str).map((x) => WatchlistItem.fromJson(x)));

class WatchlistItem {
  WatchlistItem({
    required this.watched,
    required this.title,
    required this.rating,
    required this.release_date,
    required this.review,
  });

  bool watched;
  String title;
  int rating;
  String release_date;
  String review;

  factory WatchlistItem.fromJson(Map<String, dynamic> json) => WatchlistItem(
        watched: json["watched"],
        title: json["title"],
        rating: json["rating"],
        release_date: json["release_date"],
        review: json["review"],
      );

}
