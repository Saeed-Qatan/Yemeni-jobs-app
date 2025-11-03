import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yemeni_jops/vm/theme_provider_vm.dart';


class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,

      appBar: AppBar(title: Text("Setting"), centerTitle: true),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.only(right: 25, top: 10, left: 25),
        padding: EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Dark Mode",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            CupertinoSwitch(
              value:
                  Provider.of<ThemeProviderVm>(context, listen: false).isDarkMode,
              onChanged: (value) {
                Provider.of<ThemeProviderVm>(
                  context,
                  listen: false,
                ).toggleTheme();
              },
            ),
          ],
        )
      ),
    );
  }
}
