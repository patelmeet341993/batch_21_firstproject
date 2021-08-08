import 'package:flutter/material.dart';

import 'my_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 late String text;


  @override
  void initState() {
    super.initState();

    text="Home";
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: getBody(),
    ));
  }

  Widget getBody() {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          MyAppBar(),
          Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(child: Text(text,style: TextStyle(fontSize: 40),)),

          )),
          getBottomBar()
        ],
      ),
    );
  }

  Widget getBottomBar() {
    return Container(
      height: 65,
      color: Colors.white,
      child: Row(
        children: [
          bottomMenuItem(Icons.home, "Home", tapFun: () {
            print("home");
            text="Home";
            setState(() {
            });
          }),
          bottomMenuItem(Icons.favorite, "Fav", tapFun: () {
            print("fav");
            text="Fav";
            setState(() {
            });
          }),
          bottomMenuItem(Icons.menu, "Menu", tapFun: () {
            print("menu");
            text="Menu";
            setState(() {
            });
          }),
          bottomMenuItem(Icons.add_shopping_cart, "Cart", tapFun: () {}),
          bottomMenuItem(Icons.supervised_user_circle, "Profile", tapFun: () {
            text="Profile";
            setState(() {
            });
          }),
        ],
      ),
    );
  }

  Widget bottomMenuItem(IconData icon, String title,
      {required Function tapFun}) {
    return Expanded(
        child: InkWell(
          // onTap: ()=>tapFun()
      onTap: () {
        print("inner work");
        tapFun();
      },
      child: Container(
        color: Colors.black38,
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Icon(
                icon,
                size: 30,
                  color: title==text?Colors.white:Colors.black
              ),
              Text(title,style: TextStyle(
                color: title==text?Colors.white:Colors.black,
                fontSize: title==text?18:16,
                fontWeight: title==text?FontWeight.bold:FontWeight.normal
              ),)
            ],
          ),
        ),
      ),
    ));
  }


}

