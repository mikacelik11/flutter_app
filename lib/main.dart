import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String title = 'Flutter Mapp';

//stateless
//material app
//scaffold
// applications
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark
          )
        ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
          ),
          drawer: Drawer(
            child: Column(
              children: [
                ListTile(
                  title: Text('logout'),
                ),
              ],
            ),
          ),
          
          bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home), 
                label: 'home',
              ),
              NavigationDestination(
                icon: Icon(Icons.person), 
                label: 'Profile',
              ),
            ],
            onDestinationSelected: (value) {
              print(value);
            },
            selectedIndex: 0,
          ),
        ),
      ),
    );
  }
}