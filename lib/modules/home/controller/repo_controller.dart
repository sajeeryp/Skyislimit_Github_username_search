// controllers/profile_controller.dart
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:skyislimit_demo/services/functions.dart';
import 'dart:convert';

import '../../../model/profile_model.dart';
import '../../../services/constants.dart';

class ProfileController extends GetxController {
  var profile = Profile(
          username: '',
          name: '',
          avatarUrl: '',
          followers: 0,
          bio: '',
          publicRepos: 0,
          following: 0)
      .obs;

  Future<void> fetchUserProfile(String username) async {
    try {
      final response =
          await http.get(Uri.parse(userDetailsApi+username));
      if (response.statusCode == 200) {
        final userData = json.decode(response.body);
        profile.value = Profile(
          username: userData['login'] ?? "Not available",
          name: userData['name'] ?? "Not available",
          avatarUrl: userData['avatar_url'] ?? "Not available",
          bio: userData['bio'] ?? "Not available",
          followers: userData['followers'] ?? "Not available",
          following: userData['following'] ?? "Not available",
          publicRepos: userData['public_repos'] ?? "Not available",
        );
      } else {
        throw Exception('Failed to load user profile');
      }
    } catch (e) {
      commonPrint('Error: $e');
    }
  }
}
