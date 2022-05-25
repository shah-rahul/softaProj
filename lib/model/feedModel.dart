import 'package:flutter/foundation.dart';

class FeedModel {
  final String userName;
  final String userImage;
  final String feedDuration;
  final String feedMedia;
  final String uid;

  FeedModel({
    required this.userName,
    required this.userImage,
    required this.feedDuration,
    required this.feedMedia,
    required this.uid,
  });
  factory FeedModel.fromDB(Map<String, dynamic> data) {
    return FeedModel(
        userName: data['feed_user_name'],
        userImage: data['feed_user_image'],
        feedDuration: data['feed_duration'],
        feedMedia: data['feed_media'],
        uid: data['feed_user_register_id']);
  }
}
