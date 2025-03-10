import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigationBarEntity {
  final IconData icon;

  BottomNavigationBarEntity({required this.icon});
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
      BottomNavigationBarEntity(icon: FontAwesomeIcons.gamepad),
      BottomNavigationBarEntity(icon: FontAwesomeIcons.rocketchat),
    ];
