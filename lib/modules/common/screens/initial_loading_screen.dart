import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InitialLoadingScreen extends StatelessWidget {
  const InitialLoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // _showPresentation();

    return const Scaffold(
      body: Center(child: CupertinoActivityIndicator()),
    );
  }
}
