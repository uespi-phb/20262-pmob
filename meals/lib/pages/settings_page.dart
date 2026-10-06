import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_provider.dart';

class SettingsPage extends StatelessWidget {
  const new({super.key});

  List<Widget> _filterStates(BuildContext context) {
    final provider = Provider.of<AppProvider>(context, listen: false);

    return provider.filters
        .map(
          (filter) => Consumer<AppProvider>(
            builder: (_, _, _) {
              debugPrint('SwitchListTile.builder(): ${filter.title} -> ${filter.state}');

              return SwitchListTile(
                value: filter.state,
                onChanged: (_) => provider.toggleFilterState(filter),
                inactiveTrackColor: Colors.grey.shade400,
                thumbColor: WidgetStateProperty.resolveWith<Color?>((states) {
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.white;
                  }
                  return null; // Use the default color for other states.
                }),
                title: Text(
                  filter.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(filter.subtitle),
                secondary: Icon(filter.state ? filter.activeIcon : filter.inactiveIcon),
              );
            },
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('SettingsPage.builder()');

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

          ..._filterStates(context),
        ],
      ),
    );
  }
}

/*
SwitchListTile(
            value: false,
            onChanged: (value) {},
            inactiveTrackColor: Colors.grey.shade400,
            thumbColor: WidgetStateProperty.resolveWith<Color?>((states) {
              if (states.contains(WidgetState.hovered)) {
                return Colors.white;
              }
              return null; // Use the default color for other states.
            }),
            title: Text(
              'Sem Glútem',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Só exibe refeições sem glútem'),
          ),
*/
