import 'package:app_templates/app/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          'homes.home-page'.tr,
          style: controller.cfs.appBarTitleTextStyle(),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            'homes.hello'.tr,
            style: controller.cfs.simpleTextStyle(),
          ),
        ),
      ),
    );
  }
}

class MyDrawer extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize!;
    double screenHeight = SizeConfig.screenHeight!;
    List<Map<String, dynamic>> _list_items =
        controller.listDrawerMenuItems(context);
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: screenHeight / 5,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'drawers.profile'.tr,
                        style: controller.cfs.appBarTitleTextStyle(),
                      ),
                    ),
                    SizedBox(
                      height: defaultSize / 2,
                    ),
                  ],
                ),
              ),
              Divider(),
              Column(
                children: List.of(
                  _list_items.map(
                    (e) => ListTile(
                      title: Text(
                        (e['title'] as String).tr,
                        style: controller.cfs.menuTitleTextStyle(),
                      ),
                      leading: Image.asset(e['image'] as String),
                      onTap: e['onTap'] as Function(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
