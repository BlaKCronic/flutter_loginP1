import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:tap_2024/screens/settings/global_values.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Ago-Dec 2024',
        //style: TextStyle(fontFamily: 'super')
        ),
      ),
      drawer: myDrawer(context),
    );
  }

  Widget myDrawer(context){
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage:
              NetworkImage ('https://64.media.tumblr.com/b9dd91284a6cfaf285be54d1bb712652/tumblr_pmbbi8NqIJ1vsss7oo1_250.jpg'),
            ),
            accountName: 
            Text('Christian Eduardo'),
            accountEmail: 
            Text('chris@gmail.com')
            ),
          ListTile(
            onTap: (){},
            title: const Text('Pracitica 1'),
            subtitle: const Text('Challenge'),
            leading: const Icon(Icons.code),
            trailing: const Icon(Icons.chevron_right),
          ),

          ListTile(
            onTap: () => Navigator.pushNamed(context,"/movies"),
            title: const Text('Popular Movies'),
            subtitle: const Text('Test APIs'),
            leading: const Icon(Icons.movie),
            trailing: const Icon(Icons.chevron_right),
          ),

          ListTile(
            onTap: (){
              Navigator.pop(context);
              Navigator.pop(context);
            },
            title: const Text('salir'),
            leading: const Icon(Icons.code),
            trailing: const Icon(Icons.chevron_right),
          ),
          
          DayNightSwitcher(
            isDarkModeEnabled: GlobalValues.banThemeDark.value,
            onStateChanged: (isDarkModeEnabled){
              GlobalValues.banThemeDark.value = isDarkModeEnabled;
            }
          ),
        ],
      ),
    );
  }
}