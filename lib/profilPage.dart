
import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        body:NestedScrollView(
            headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled){
              return[
                SliverAppBar(

                  pinned: true,
                  floating: true,
                  toolbarHeight: 300,

                  backgroundColor: Colors.white,
                  iconTheme: IconThemeData(color: Colors.black),
                  toolbarTextStyle: TextStyle(color: Colors.black),
                  titleTextStyle: TextStyle(color: Colors.black),
                  centerTitle: false,

                  title: Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("ahjb._"),
                            Row(
                              children: [Icon(Icons.add),Icon(Icons.menu)],
                            )
                          ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("assets/images/image3.jpeg"),
                            ),
                            Column(children: [
                              Text("2"),
                              Text("Posts")
                            ],),
                            Column(children: [
                              Text("2"),
                              Text("Posts")
                            ],),
                            Column(children: [
                              Text("2"),
                              Text("Posts")
                            ],),

                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Ali Hajeb"),
                            Text("flutter Devoleper"),
                            Text("5 may, 2002")
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 300,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black12,
                              ),
                              child:Center(child: Text("Edit Profil")),
                            ),
                            Container(
                              width: 30,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black12,
                              ),
                              child:Center(child: Icon(Icons.person),),
                            )

                          ],),



                      ],
                    ),
                  ),



                  bottom: TabBar(

                    labelColor: Colors.black,
                    labelStyle: TextStyle(fontSize: 70),


                    unselectedLabelColor:Colors.black54 ,
                    unselectedLabelStyle: TextStyle(fontSize: 20),

                    indicatorColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.values.first,
                    indicatorWeight: 2,

                    splashBorderRadius: BorderRadius.circular(50),


                    isScrollable: true,
                    tabs: [
                      Tab(icon: Icon(Icons.menu),),
                      Tab(icon: Icon(Icons.person),)
                    ],
                  ),
                ),
              ];
            },

         body: TabBarView(
              children: [
                Center(child:Expanded(
                  child: GridView.builder(
                    itemCount: 23,

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return Container(
                          color: Colors.blue,
                          child: Center(child: Text("image")),
                        );
                      }),
                )),
                Center(child: Expanded(
                  child: GridView.builder(
                    itemCount: 43,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return Container(
                          color: Colors.red,
                          child: Center(child: Text("image")),
                        );
                      }),
                )),

              ]),
        ),

      ),
    );
  }
}
