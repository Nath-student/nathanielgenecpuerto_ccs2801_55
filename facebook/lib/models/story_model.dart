class StoryModel {
  final String id;
  final String username;
  final String profileimage;
  final String storyimagepath;
  final DateTime timestamp;
  final bool isViewed;
  
  StoryModel({
    required this.id,
    required this.username,
    required this.profileimage,
    required this.storyimagepath,
    required this.timestamp,
    this.isViewed = false,
  });
Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'profileimage': profileimage,
      'storyimagepath': storyimagepath,
      'timestamp': timestamp.toIso8601String(),
      'isViewed': isViewed,
    };
  }

  factory StoryModel.fromJson(Map<String, dynamic> json) {
    return StoryModel(
      id: json['id'],
      username: json['username'],
      profileimage: json['profileimage'],
      storyimagepath: json['storyimagepath'],
      timestamp: DateTime.parse(json['timestamp']),
      isViewed: json['isViewed'] ?? false,
    );
  }
}
