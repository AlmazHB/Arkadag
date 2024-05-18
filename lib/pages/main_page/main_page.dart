import 'package:flutter/material.dart';
import '../pages.dart';

class MainControll extends StatefulWidget {
  const MainControll({super.key});

  @override
  State<MainControll> createState() => _MainControllState();
}

class _MainControllState extends State<MainControll> {
  int _currentIndex = 0;
  final _pageController = PageController();

  void _openPage(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() => _currentIndex = value);
        },
        children: const [
          HomePage(),
          LoginPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor:const Color.fromARGB(255, 48, 207, 224),
        currentIndex: _currentIndex,
        onTap: _openPage,
        selectedIconTheme: const IconThemeData(color: Colors.greenAccent,size: 32),
        unselectedIconTheme:const  IconThemeData(size: 20),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: '',
            //
          ),
          BottomNavigationBarItem(
            
            icon: Icon(Icons.login),
            label: '',
          ),
        ],
      ),
    );
  }
}