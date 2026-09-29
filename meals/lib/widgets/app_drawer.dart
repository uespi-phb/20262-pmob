import 'package:flutter/material.dart';

import '../pages/settings_page.dart';

class AppDrawer extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.pink,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Vamos Cozinhar?',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
            },
            leading: Icon(Icons.restaurant),
            title: Text(
              'Refeições',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
            leading: Icon(Icons.settings),
            title: Text(
              'Configurações',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
