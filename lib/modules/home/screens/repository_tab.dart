// views/repository_tab.dart
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skyislimit_demo/modules/common/components/text.dart';
import 'package:skyislimit_demo/modules/home/controller/profile_controller.dart';
import 'package:skyislimit_demo/utils/theme.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/profile_model.dart';

class RepositoryTab extends StatelessWidget {
  final RepositoryController repositoryController = Get.find();

  RepositoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount: repositoryController.repositories.length,
        itemBuilder: (context, index) {
          Repository repo = repositoryController.repositories[index];
          return (repo.name == '' || repo.name == "Not available")
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
              : InkWell(
                  onTap: () {
                    launchInCustomTab(repo.htmlUrl);
                  },
                  child: Container(
                      // height: 60,
                      padding: padding15,
                      margin: const EdgeInsets.all(12),
                      width: context.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: borderColor),
                        color: borderColor,
                        //Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: lightBlueBns,
                            blurRadius: 5.0,
                            spreadRadius: 0.5,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          TextDemo(
                            title: repo.name,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          TextDemo(title: repo.description),
                        ],
                      )),
                );
        },
      ),
    );
  }
}

void launchInCustomTab(String url) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceWebView: false,
      enableJavaScript: true,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    );
  } else {
    throw 'Could not launch $url';
  }
}
