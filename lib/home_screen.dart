import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/colors.dart';
import 'package:islami_app/hadeth.dart';
import 'package:islami_app/quran.dart';
import 'package:islami_app/radio.dart';
import 'package:islami_app/sebha.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Islami',
            textAlign: TextAlign.end,
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: mycolors.primaryColor),
          child: BottomNavigationBar(
            currentIndex: SelectedIndex,
            onTap: (index) {
              SelectedIndex = index;
              setState(() {});
            },
            selectedIconTheme: IconThemeData(color: Colors.black),
            unselectedIconTheme: IconThemeData(color: Colors.white),
            selectedLabelStyle: TextStyle(color: Colors.black),
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                  label: 'Hadeth'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                  label: 'Sebha'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                  label: 'Radio'),
            ],
          ),
        ),
        body: moving[SelectedIndex],
      ),
    );
  }

  List<Widget> moving = [quran(), hadeth(), sebha(), radio(),];
}
