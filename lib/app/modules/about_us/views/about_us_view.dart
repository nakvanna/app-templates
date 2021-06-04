import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/about_us_controller.dart';

class AboutUsView extends GetView<AboutUsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('about-us.about-us'.tr),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            'about-us.power-by-cloudware.co,ltd'.tr,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
