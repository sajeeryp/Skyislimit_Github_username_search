// models/profile.dart
class Profile {
  final String username;
  final String name;
  final String avatarUrl;
  final String bio;
  final int followers;
  final int following;
  final int publicRepos;

  Profile({
    required  this.username,
    required  this.name,
    required this.avatarUrl,
    required this.bio,
    required this.followers,
    required this.following,
    required this.publicRepos,
  });
}

// models/repository.dart
class Repository {
  final String name;
  final String description;
  final String htmlUrl;

  Repository({required this.name, required this.description, required this.htmlUrl});
}
