import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class AppZoomDrawer extends StatelessWidget {
  const AppZoomDrawer({
    super.key,
    this.controller,
    required this.menuScreen,
    required this.screen,
  });

  final ZoomDrawerController? controller;
  final Widget menuScreen;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      disableDragGesture: true,
      menuScreenTapClose: true,
      mainScreenTapClose: true,
      controller: controller,
      style: DrawerStyle.defaultStyle,
      menuScreen: menuScreen,
      mainScreen: screen,
      borderRadius: 24.0,
      showShadow: false,
      angle: -9.0,
      drawerShadowsBackgroundColor: Colors.white,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.easeInOut,
    );
  }
}
