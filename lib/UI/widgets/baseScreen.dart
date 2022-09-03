import 'package:flutter/material.dart';
import 'package:xperiences/UI/widgets/destinosScreen.dart';
import 'package:xperiences/UI/widgets/homeScreen.dart';
import 'package:xperiences/UI/widgets/perfilScreen.dart';
import 'package:xperiences/core/colors.dart';

class BaseScreen extends StatefulWidget {
  BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentPage = 1;

  final List<Widget> _pages = [
    DestinosScreen(),
    HomeScreen(),
    PerfilScreen(),
  ];

  List<BottomNavigationBarItem> getTabsData() {
    return [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.notes_rounded,
            size: 25,
          ),
          label: "Destinos"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            size: 25,
          ),
          label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 25,
          ),
          label: "Perfil"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: getTabsData(),
        backgroundColor: CustomColor.verde_uno,
        elevation: 0,
        currentIndex: currentPage,
        selectedItemColor: CustomColor.azul_tres,
        unselectedItemColor: Colors.grey[600],
        onTap: (index) => setState(() => currentPage = index),
      ),
    );
  }
}

class MyDialog extends StatelessWidget {
  const MyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        title: Text("Cerrando Sesión :("),
        content: Text("¿Estás seguro que deseas salir de tu cuenta?"),
        actions: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: CustomColor.azul_tres),
              onPressed: () async {
                Navigator.pop(context, true);
              },
              child: Text("Salir")),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: CustomColor.azul_tres),
              onPressed: () async {
                Navigator.pop(context, false);
              },
              child: Text("Cancelar")),
        ],
      ),
    );
  }
}
