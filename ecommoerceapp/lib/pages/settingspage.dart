import 'package:ecommoerceapp/themes/themesprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Settingspage extends StatelessWidget {
  const Settingspage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title:const Text('settings menu'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            child: ListTile(
              leading: const Icon(Icons.settings),
              title:const  Text('Settings'),
              trailing: Consumer<ThemeProvider>(
                builder: (context, themeProvider, child) {
                  return Switch(
                    value: themeProvider.isDarkMode,
                    onChanged: (value) {
                      themeProvider.toggleTheme();
                    },
                  );
                },
              ),
            ),
          ),
          // Your other shop UI components go here
        
        ],
      ),
    );
  }
}