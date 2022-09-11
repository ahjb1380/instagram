import 'package:flutter/material.dart';
import 'package:instageram/homePage.dart';
import 'package:instageram/profilPage.dart';
import 'package:instageram/searchPage.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 3,
      length: 4,
      child: Scaffold(
        bottomNavigationBar: menu(),
        body: TabBarView(children: [
          HomePage(),
          SearchPage(),
          Container(
            color: Colors.black,
          ),
          ProfilPage(),
        ]),
      ),
    );
  }

  Widget menu() {
    return Container(
      color: Colors.white,

      child: TabBar(
        physics: ScrollPhysics(),
        isScrollable: true,
        labelColor: Colors.black,
        labelStyle: TextStyle(fontSize: 30),
        unselectedLabelColor: Colors.black54,
        unselectedLabelStyle: TextStyle(fontSize: 20),


        indicatorColor: Colors.white,
        tabs: [
          Tab(icon: Icon(Icons.home_filled)),
          Tab(icon: Icon(Icons.search)),
          Tab(icon: Icon(Icons.favorite_border_rounded)),
          Tab(icon: Icon(Icons.person)),

        ],
      ),
    );
  }
}
