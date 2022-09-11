import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //todo: container paein yek textfilde ya textForm amade ast
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black12,
            ),
            child: Row(
              children: [
                SizedBox(width: 10,),
                Icon(
                  Icons.mood,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10,
                ),

                Expanded(
                  child: TextFormField(
                    cursorColor: Colors.blue,

                    minLines: 1,
                    maxLines: 4,
                    cursorHeight: 1,


                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      iconColor: Colors.black,
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.black54),),
                  ),
                ),
                SizedBox(width: 10,),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 30,

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.red,
                    child: Center(child: Text("image")),
                  );
                }),
          )

        ],
      ),
    );
  }
}
