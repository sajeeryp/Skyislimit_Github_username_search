// views/profile_tab.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skyislimit_demo/modules/home/controller/repo_controller.dart';

import '../../../utils/theme.dart';
import '../../common/components/text.dart';

class ProfileTab extends StatelessWidget {
  final ProfileController profileController = Get.find();

  ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: (profileController.profile.value.username == '' ||
                  profileController.profile.value.username == "Not available")
              ? Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: lightBlueBns,
                          blurRadius: 5.0,
                          spreadRadius: 0.5,
                        )
                      ],
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: TextDemo(title: 'No Data Found or No Internet')))
              : Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: lightBlueBns,
                          blurRadius: 5.0,
                          spreadRadius: 0.5,
                        )
                      ],
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.network(
                          (profileController.profile.value.avatarUrl == '')
                              ? ''
                              : profileController.profile.value.avatarUrl,
                          width: 100,
                          height: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextDemo(
                          fontSize: 17,
                          title:
                              'Username:  ${profileController.profile.value.username}'),
                      TextDemo(
                          fontSize: 15,
                          title:
                              'Name:  ${profileController.profile.value.name}'),
                      const Divider(),
                      TextDemo(
                          title: 'Bio: ${profileController.profile.value.bio}'),
                      TextDemo(
                          title:
                              'Followers:  ${profileController.profile.value.followers}'),
                      TextDemo(
                          title:
                              'Following:  ${profileController.profile.value.following}'),
                      TextDemo(
                          title:
                              'Public Repos:  ${profileController.profile.value.publicRepos}'),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
