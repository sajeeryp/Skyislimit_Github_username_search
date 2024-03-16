// controllers/repository_controller.dart
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:skyislimit_demo/model/profile_model.dart';
import 'dart:convert';

import 'package:skyislimit_demo/services/functions.dart';

import '../../../services/constants.dart';

class RepositoryController extends GetxController {
  var repositories = <Repository>[].obs;

  Future<void> fetchRepositories(String username) async {
    try {
      final response = await http
          .get(Uri.parse("$userDetailsApi$username/repos"));
      if (response.statusCode == 200) {
        commonPrint('200');
        final List<dynamic> repoData = json.decode(response.body);
        repositories.value = repoData
            .map((repo) => Repository(
                  name: repo['name'] ?? 'No Name available',
                  description:
                      repo['description'] ?? 'No description available',
                  htmlUrl: repo['html_url'] ?? 'No Url found',
                ))
            .toList();
      } else {
        throw Exception('Failed to load repositories');
      }
    } catch (e) {
      commonPrint('Error: $e');
    }
  }
}
