import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:xperiences/UI/perfilScreen.dart';
import 'package:xperiences/UI/destinosListScreen.dart';
import 'package:xperiences/UI/homeScreen.dart';
import 'package:xperiences/core/colors.dart';

class BaseScreen extends StatefulWidget {
  BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentPage = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    DestinoListScreen(),
    PerfilScreen(),
  ];

  List<TabData> getTabsData() {
    return [
      TabData(
        icon: Icons.home_filled,
        iconSize: 25.0,
        //title: 'Home',
        fontSize: 11,
        fontWeight: FontWeight.bold,
      ),
      TabData(
        icon: Icons.notes_rounded,
        iconSize: 25,
        //title: 'Destinos',
        fontSize: 11,
        fontWeight: FontWeight.bold,
      ),
      TabData(
        icon: Icons.person,
        iconSize: 25,
        //title: 'Configuración',
        fontSize: 11,
        fontWeight: FontWeight.bold,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPage],
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: currentPage,
        barHeight: 50,
        arcWidth: 50,
        arcHeight: 50,
        itemTextOff: 1,
        itemTextOn: 1,
        circleOutline: 0.0,
        shadowAllowance: 0.0,
        circleSize: 50.0,
        blurShadowRadius: 50.0,
        circleColor: CustomColor.azul_tres,
        activeIconColor: Colors.white,
        inactiveIconColor: Colors.grey,
        tabs: getTabsData(),
        onTabChangedListener: (index) => setState(() => currentPage = index),
      ),
    );
  }
}
