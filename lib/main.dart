import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless

//material app

//scaffold

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Map'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                child: Text('Drawer'),
              
              ),
            
              ListTile(
                title: Text('logout'),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                print('ejenje');
              },
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 10.0,
            ),
            FloatingActionButton(
              onPressed: () {
                print('ejenje');
              },
              child: Icon(Icons.add),
            ),
          ],
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
          selectedIndex: 1,
        ),
      ),
    );
  }
}