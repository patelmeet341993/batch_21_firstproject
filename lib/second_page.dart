import 'package:flutter/material.dart';
import 'package:stack_column/BottomBar.dart';
import 'package:stack_column/my_app_bar.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: getBody(),
      ),
    );
  }

  Widget getBody() {
    return Container(
      child: Column(
        children: [
          MyAppBar(
            title: "Second Page",
            backClr: Colors.lightBlue,
          ),
          Expanded(
              child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            child: Stack(
              children: [
                Positioned(
                    top: 10,
                    right: 10,
                    child: Icon(Icons.supervised_user_circle)),

                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: BottomBar(updateParent: (i){

                    print("selected index :$i");

                  },
                  isMenuVisible: false,
                  ),
                ),
                Positioned(
                    bottom: 40,
                    right: 40,
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                    )),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
