import 'package:flutter/foundation.dart';

enum UrlType { IMAGE, VIDEO, UNKNOWN }

class FeedModel {
  final String userName;
  final String userImage;
  final String feedDuration;
  final String feedMedia;
  final String uid;
  final UrlType feedType;

  FeedModel(
      {required this.userName,
      required this.userImage,
      required this.feedDuration,
      required this.feedMedia,
      required this.uid,
      required this.feedType});
  factory FeedModel.fromDB(Map<String, dynamic> data) {
    var mediaUrl = data['feed_media'] as String;
    return FeedModel(
        userName: data['feed_user_name'],
        userImage: data['feed_user_image'],
        feedDuration: data['feed_duration'],
        feedMedia: data['feed_media'],
        feedType: mediaUrl == ""
            ? UrlType.UNKNOWN
            : mediaUrl.contains(".mp4")
                ? UrlType.VIDEO
                : UrlType.IMAGE,
        uid: data['feed_user_register_id']);
  }
}
