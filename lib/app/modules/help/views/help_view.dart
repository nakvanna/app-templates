import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/help_controller.dart';

class HelpView extends GetView<HelpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HelpView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HelpView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
