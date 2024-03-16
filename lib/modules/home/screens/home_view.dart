// views/home_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skyislimit_demo/modules/home/controller/profile_controller.dart';
import 'package:skyislimit_demo/modules/home/controller/repo_controller.dart';
import 'package:skyislimit_demo/utils/theme.dart';

import 'profile_tab.dart';
import 'repository_tab.dart';

class HomeView extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GitHub User Details'),
          bottom: const TabBar(
            indicatorWeight: 4,
            labelColor: white,
            indicatorColor: textColorBlue,
            tabs: <Tab>[
              Tab(text: 'Profile'),
              Tab(text: 'Repositories'),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Enter GitHub username',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      String username = _searchController.text.trim();
                      Get.find<ProfileController>().fetchUserProfile(username);
                      Get.find<RepositoryController>()
                          .fetchRepositories(username);
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ProfileTab(),
                  RepositoryTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
