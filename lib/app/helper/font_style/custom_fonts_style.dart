import 'package:app_templates/app/config/size_config.dart';
import 'package:app_templates/app/data/persistent/persistent_data.dart';
import 'package:flutter/material.dart';

final PersistentData _persistentData = PersistentData();

class CFS {
  final _locale_code = _persistentData.readLocaleCode();

  TextStyle appBarTitleTextStyle() {
    double defaultSize = SizeConfig.defaultSize!;
    if (_locale_code == 'km_KH') {
      return TextStyle(
        fontFamily: 'Bayon',
        fontSize: defaultSize * 2.2,
      );
    } else {
      return TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
        fontSize: defaultSize * 2.2,
      );
    }
  }

  TextStyle cardTitleTextStyle() {
    double defaultSize = SizeConfig.defaultSize!;
    if (_locale_code == 'km_KH') {
      return TextStyle(
        fontFamily: 'Bayon',
        fontSize: defaultSize * 1.8,
      );
    } else {
      return TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
        fontSize: defaultSize * 1.8,
      );
    }
  }

  TextStyle menuTitleTextStyle() {
    double defaultSize = SizeConfig.defaultSize!;
    if (_locale_code == 'km_KH') {
      return TextStyle(
        fontFamily: 'Preahvihear',
        fontSize: defaultSize * 1.6,
      );
    } else {
      return TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: defaultSize * 1.6,
      );
    }
  }

  TextStyle menuSubTitleTextStyle() {
    double defaultSize = SizeConfig.defaultSize!;
    if (_locale_code == 'km_KH') {
      return TextStyle(
        fontFamily: 'Battambang',
        fontSize: defaultSize * 1.4,
      );
    } else {
      return TextStyle(
        fontFamily: 'Roboto',
        fontSize: defaultSize * 1.4,
      );
    }
  }

  TextStyle simpleTextStyle() {
    double defaultSize = SizeConfig.defaultSize!;
    if (_locale_code == 'km_KH') {
      return TextStyle(
        fontFamily: 'Battambang',
        fontSize: defaultSize * 1.2,
      );
    } else {
      return TextStyle(
        fontFamily: 'Roboto',
        fontSize: defaultSize * 1.2,
      );
    }
  }

  TextStyle buttonTextStyle() {
    double defaultSize = SizeConfig.defaultSize!;
    if (_locale_code == 'km_KH') {
      return TextStyle(
        fontFamily: 'Battambang',
        fontSize: defaultSize * 1.6,
        color: Colors.white,
      );
    } else {
      return TextStyle(
        fontFamily: 'Roboto',
        fontSize: defaultSize * 1.6,
        color: Colors.white,
      );
    }
  }

  TextStyle numberInputTextStyle() {
    double defaultSize = SizeConfig.defaultSize!;
    return TextStyle(
      fontSize: defaultSize * 2.0,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle validatePhoneNumberTextStyle() {
    double defaultSize = SizeConfig.defaultSize!;
    if (_locale_code == 'km_KH') {
      return TextStyle(
        fontFamily: 'Battambang',
        fontSize: defaultSize * 1.4,
        color: Colors.red,
        fontWeight: FontWeight.w500,
      );
    } else {
      return TextStyle(
        fontFamily: 'Roboto',
        fontSize: defaultSize * 1.4,
        color: Colors.red,
        fontWeight: FontWeight.w500,
      );
    }
  }
}
