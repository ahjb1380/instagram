import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "instageram",
              style: TextStyle(
                  fontFamily: 'Square', fontSize: 40, color: Colors.black),
            ),
            Icon(Icons.send, color: Colors.black)
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //ToDo:stori scrool
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.all(5),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/images/image3.jpeg"),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.green,
                                child: Center(child: Icon(Icons.add,size: 15,)),
                              ),
                            ),
                          ),
                          Text("Your storei")
                        ],
                      )
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 40,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/image1.jpg"),
                              ),
                              Text("ahjb_")
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 5,
              child: ListView.builder(
                itemCount: 40,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage("assets/images/image1.jpg"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("ahjb")
                                ],
                              ),
                              Icon(Icons.more_vert)
                            ],
                          ),
                        ),
                        Image.asset("assets/images/image1.jpg"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.favorite_border_rounded),
                                Icon(Icons.chat_bubble_outline_rounded),
                                Icon(Icons.send_sharp)
                              ],
                            ),
                            Icon(Icons.save_rounded),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
