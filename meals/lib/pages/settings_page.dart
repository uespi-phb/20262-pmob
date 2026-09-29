import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Filtros',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SwitchListTile(
            onChanged: (value) {},
            value: false,
            title: Text(
              'Sem Glútem',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Só exibe refeições sem glútem'),
          ),
        ],
      ),
    );
  }
}
