import 'package:flutter/material.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {

  static const String routerName = 'Home';
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Darkmode: ${Preferences.isDarkmode}'),
          Divider(
            color: Colors.white,
          ),
          Text('Género: ${Preferences.gender==1? 'Masculino': 'Femenino'}'),
          Divider(
            color: Colors.white,
          ),
          Text('Nombre de usuario: ${Preferences.name}'),
        ]
      )
   );
  }
}