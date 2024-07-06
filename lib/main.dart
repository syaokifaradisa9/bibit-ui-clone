import 'package:bibit_clone/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bibit Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainMenu()
    );
  }
}

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  List<Widget> pages = [
    const HomePage(),
    Container(),
    Container(),
    Container(),
    Container()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: "asd",
            icon: Image.asset(
              "assets/icons/home.png",
              width: 22,
            )
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              "assets/icons/chart.png",
              width: 22
            )
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              "assets/icons/search.png",
              width: 22,
            )
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              "assets/icons/transaction.png",
              width: 22,
            )
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              "assets/icons/user.png",
              width: 22,
            )
          )
        ],
      ),
    );
  }
}
